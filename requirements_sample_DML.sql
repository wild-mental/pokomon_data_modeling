-- 전체 조회
SELECT * FROM pokemon;
-- 특정 속성 트레이너 소유 포켓몬만 조회
SELECT *
FROM pokemon
WHERE owner IN (SELECT id
                FROM pokemon_trainer
                WHERE trainer_type IN ('NORMAL', 'DARK'));

-- 트레이너 별 몬스터 타입 개수 통계
SELECT pt.id AS trainer_id, pt.name, monster_type, COUNT(monster_type)
FROM pokemon p
INNER JOIN poke_dex pd USING (monster_id)
INNER JOIN pokemon_trainer pt ON p.owner = pt.id
GROUP BY pt.id, pt.name, monster_type
ORDER BY trainer_id, COUNT(monster_type) DESC;

-- 진화형 연결
SELECT pd1.monster_id, pd1.monster_type, pd1.monster_name, pd1.evolution_stage, pd1.evolves_from, pd2.monster_name, pd2.evolution_stage FROM poke_dex pd1
INNER JOIN poke_dex pd2 ON pd1.evolves_from = pd2.monster_id
ORDER BY pd1.evolution_stage, pd1.evolves_from;

-- SHA256 해시를 사용하여 파생 후보키 생성
SELECT SHA2(CONCAT(monster_id, nickname, (SELECT name FROM pokemon_trainer WHERE id = owner)), 256) AS derived_candidate_key
FROM pokemon;

-- 파생 후보키 넣을 컬럼 생성