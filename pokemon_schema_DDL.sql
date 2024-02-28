-- 1. 데이터베이스 생성 및 선택
create database pokemon_game;
use pokemon_game;
-- 2. 테이블 정의, 물리 스키마 설계
DROP TABLE IF EXISTS pokemon;
DROP TABLE IF EXISTS pokemon_trainer;
DROP TABLE IF EXISTS poke_dex;
DROP TABLE IF EXISTS pokemon_skills;
DROP TABLE IF EXISTS battle_result;
-- ----------------------
-- (1) 포켓몬 기술 스키마
-- ----------------------
DROP TABLE IF EXISTS pokemon_skills;  -- 단복수 일관성을 깨는 Entity 가 있다면 수정 필요!
CREATE TABLE pokemon_skills (
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- 컬럼명이 사용되는 맥락을 고려했을 때, 충분한 설명이 필요한 경우, prefix, postfix 사용을 고려
    skill_name VARCHAR(20) NOT NULL,
    skill_effect VARCHAR(20) NOT NULL,
    skill_type VARCHAR(10) NOT NULL,
    skill_damage VARCHAR(10) NOT NULL
);
-- ----------------------
-- (2) 포켓몬 도감 스키마
-- ----------------------
DROP TABLE IF EXISTS poke_dex;
CREATE TABLE poke_dex (
    monster_id INT PRIMARY KEY COMMENT '도감 번호',
    monster_name VARCHAR(10) NOT NULL,
    monster_type VARCHAR(10) NOT NULL COMMENT '원소 속성 / 특성',
    max_hp INT NOT NULL,
    evolution_stage INT DEFAULT 1 NOT NULL COMMENT '진화 단계 (1~3)',
    -- evolves_from : 데이터 선후관계를 판단해서, 선행 Entity or Record 가 후행 항목에 의해 참조되도록 설계
    evolves_from INT NULL COMMENT '진화 전 형태',
    is_legendary BOOL DEFAULT FALSE,
    INDEX idx_monstertype (monster_type),
    FOREIGN KEY fk_evolvesfrom (evolves_from) REFERENCES poke_dex (monster_id), -- SELF JOIN 수행
    -- DOMAIN 의미 유효성 범주
    CONSTRAINT chk_evolutionstage_range CHECK ( evolution_stage BETWEEN 1 AND 3 )
);
-- ----------------------
-- (3) 트레이너 스키마
-- ----------------------
DROP TABLE IF EXISTS pokemon_trainer;
CREATE TABLE pokemon_trainer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20),
    trainer_type VARCHAR(20) COMMENT '몬스터 타입을 추종하는 트레이너 속성',
    -- FK 에 대한 네이밍 컨벤션 지정 => DBA 가 좋아한다
    FOREIGN KEY fk_trainertype_monstertype (trainer_type) REFERENCES poke_dex (monster_type)
);
-- ----------------------
-- (4) 포켓몬 스키마
-- ----------------------
DROP TABLE IF EXISTS pokemon;
CREATE TABLE pokemon (  -- 개별 레코드에 대한 고려
    id INT PRIMARY KEY AUTO_INCREMENT,
    monster_id INT NOT NULL,  -- poke_dex_id 라고 선언해도 됨
    skill1 INT NOT NULL,  -- 반복적으로 나타날 때, 데이터의 참조 출처를 가리키만 하면 된다
    skill2 INT NULL,      --  : 참조 관계를 가진다 => FK 로 다룬다 => 새로운 Entity 발생
    owner INT NULL COMMENT '소유자(트레이너), 야생 포켓몬의 경우 NULL',
    nickname VARCHAR(20) NOT NULL,
    hp INT NOT NULL,
    is_surfable BOOLEAN DEFAULT FALSE,
    is_flyable BOOLEAN DEFAULT FALSE,
    -- 한번 정한 DB 객체 (FK, IDX .. etc) 네이밍 컨벤션을 일관해야 함
    FOREIGN KEY fk_pokemon_pokedex (monster_id) references poke_dex (monster_id),
    FOREIGN KEY fk_pokemon_skill1 (skill1) REFERENCES pokemon_skills (id),
    FOREIGN KEY fk_pokemon_skill2 (skill2) REFERENCES pokemon_skills (id),
    FOREIGN KEY fk_pokemon_trainer (owner) REFERENCES pokemon_trainer (id)
);
-- ----------------------
-- (5) 전투결과 스키마
-- ----------------------
DROP TABLE IF EXISTS battle_result;
CREATE TABLE battle_result (
    id INT PRIMARY KEY AUTO_INCREMENT,  -- 전투 한건, 한건이 고유하게 식별될 수 있는 기록으로 다뤄짐
    pokemon_id_1 INT NOT NULL,
    pokemon_id_2 INT NOT NULL,
    winner_id INT NULL,
    -- process_log VARCHAR(255), -- 만약 전투 과정이 필요하면 컬럼 추가
    result_memo VARCHAR(50),
    FOREIGN KEY fk_battleresult_pokemon_1 (pokemon_id_1) REFERENCES pokemon (id),
    FOREIGN KEY fk_battleresult_pokemon_2 (pokemon_id_2) REFERENCES pokemon (id)
);