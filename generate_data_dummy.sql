-- 각 테이블에 대한 INSERT 문
-- 데이터 요구사항
-- -> 프로그램 로직이 충분히 드러날 수 있게끔
--    케이스 Variation 이 반영된 더미 데이터 필요

-- Pokemon Skills 더미 데이터 삽입
INSERT INTO pokemon_skills (skill_name, skill_effect, skill_type, skill_damage)
VALUES
    ('Tackle', 'Normal', 'Physical', '40'),
    ('Thunderbolt', 'Electric', 'Special', '90'),
    ('Water Gun', 'Water', 'Special', '40'),
    ('Scratch', 'Normal', 'Physical', '40'),
    ('Ember', 'Fire', 'Special', '40'),
    ('Quick Attack', 'Normal', 'Physical', '40'),
    ('Vine Whip', 'Grass', 'Physical', '45'),
    ('Bubble', 'Water', 'Special', '40'),
    ('Gust', 'Flying', 'Special', '40'),
    ('Peck', 'Flying', 'Physical', '35'),
    ('Bite', 'Dark', 'Physical', '60'),
    ('Confusion', 'Psychic', 'Special', '50'),
    ('Poison Sting', 'Poison', 'Physical', '15'),
    ('Thunder Shock', 'Electric', 'Special', '40'),
    ('Razor Leaf', 'Grass', 'Physical', '55'),
    ('Ice Beam', 'Ice', 'Special', '90'),
    ('Body Slam', 'Normal', 'Physical', '85'),
    ('Earthquake', 'Ground', 'Physical', '100'),
    ('Psychic', 'Psychic', 'Special', '90'),
    ('Blizzard', 'Ice', 'Special', '110'),
    ('Hydro Pump', 'Water', 'Special', '110'),
    ('Hyper Beam', 'Normal', 'Special', '150');

-- Poke Dex 더미 데이터 삽입
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (1, 'Bulbasaur', 'Grass', 45, 1, NULL, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (2, 'Charmander', 'Fire', 39, 1, NULL, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (3, 'Squirtle', 'Water', 44, 1, NULL, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (4, 'Pikachu', 'Electric', 35, 1, NULL, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (5, 'Jigglypuff', 'Normal', 115, 1, NULL, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (6, 'Geodude', 'Rock', 40, 1, NULL, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (7, 'Gastly', 'Ghost', 30, 1, NULL, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (8, 'Onix', 'Rock', 35, 1, NULL, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (9, 'Eevee', 'Normal', 55, 1, NULL, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (10, 'Vaporeon', 'Water', 130, 2, 9, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (11, 'Jolteon', 'Electric', 65, 2, 9, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (12, 'Flareon', 'Fire', 65, 2, 9, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (13, 'Snorlax', 'Normal', 160, 1, NULL, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (14, 'Dragonite', 'Dragon', 91, 3, 148, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (15, 'Mewtwo', 'Psychic', 106, 1, NULL, TRUE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (16, 'Mew', 'Psychic', 100, 1, NULL, TRUE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (17, 'Lapras', 'Water', 130, 1, NULL, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (18, 'Gyarados', 'Water', 95, 2, 129, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (19, 'Arcanine', 'Fire', 90, 1, NULL, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (20, 'Alakazam', 'Psychic', 55, 2, 64, FALSE);
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (147, 'Dratini', 'Dragon', 41, 1, NULL, FALSE), -- Dragonair의 진화 전
    (63, 'Abra', 'Psychic', 25, 1, NULL, FALSE); -- Kadabra의 진화 전
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (148, 'Dragonair', 'Dragon', 61, 2, 147, FALSE), -- Dragonite의 진화 전
    (129, 'Magikarp', 'Water', 20, 1, NULL, FALSE), -- Gyarados의 진화 전
    (64, 'Kadabra', 'Psychic', 40, 2, 63, FALSE); -- Alakazam의 진화 전
-- 각 타입의 포켓몬 더미 데이터 생성
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    -- Normal 타입
    (101, 'Rattata', 'Normal', 30, 1, NULL, FALSE),
    (102, 'Snorlax', 'Normal', 160, 1, NULL, FALSE),
    (103, 'Chansey', 'Normal', 250, 1, NULL, FALSE),
    (104, 'Pidgey', 'Normal', 40, 1, NULL, FALSE),
    (105, 'Tauros', 'Normal', 75, 1, NULL, FALSE),
    -- Fire 타입
    (106, 'Charmander', 'Fire', 39, 1, NULL, FALSE),
    (107, 'Vulpix', 'Fire', 38, 1, NULL, FALSE),
    (108, 'Ponyta', 'Fire', 50, 1, NULL, FALSE),
    (109, 'Magmar', 'Fire', 65, 1, NULL, FALSE),
    (110, 'Growlithe', 'Fire', 55, 1, NULL, FALSE),
    -- Water 타입
    (111, 'Squirtle', 'Water', 44, 1, NULL, FALSE),
    (112, 'Psyduck', 'Water', 50, 1, NULL, FALSE),
    (113, 'Poliwag', 'Water', 40, 1, NULL, FALSE),
    (114, 'Krabby', 'Water', 30, 1, NULL, FALSE),
    (115, 'Horsea', 'Water', 30, 1, NULL, FALSE),
    -- Grass 타입
    (116, 'Bulbasaur', 'Grass', 45, 1, NULL, FALSE),
    (117, 'Oddish', 'Grass', 45, 1, NULL, FALSE),
    (118, 'Bellsprout', 'Grass', 50, 1, NULL, FALSE),
    (119, 'Tangela', 'Grass', 65, 1, NULL, FALSE),
    (120, 'Exeggcute', 'Grass', 60, 1, NULL, FALSE),
    -- Electric 타입
    (121, 'Pikachu', 'Electric', 35, 1, NULL, FALSE),
    (122, 'Magnemite', 'Electric', 25, 1, NULL, FALSE),
    (123, 'Voltorb', 'Electric', 40, 1, NULL, FALSE),
    (124, 'Electabuzz', 'Electric', 65, 1, NULL, FALSE),
    (125, 'Jolteon', 'Electric', 65, 2, 121, FALSE),
    -- Flying 타입
    (126, 'Pidgey', 'Flying', 40, 1, NULL, FALSE),
    (127, 'Zubat', 'Flying', 40, 1, NULL, FALSE),
    (128, 'Farfetch\'d', 'Flying', 52, 1, NULL, FALSE),
#     (129, 'Doduo', 'Flying', 35, 1, NULL, FALSE),
    (130, 'Scyther', 'Flying', 70, 1, NULL, FALSE),
    -- Poison 타입
    (131, 'Ekans', 'Poison', 35, 1, NULL, FALSE),
    (132, 'Grimer', 'Poison', 80, 1, NULL, FALSE),
    (133, 'Gastly', 'Poison', 30, 1, NULL, FALSE),
    (134, 'Koffing', 'Poison', 40, 1, NULL, FALSE),
    (135, 'Nidoran', 'Poison', 55, 1, NULL, FALSE),
    -- Bug 타입
    (136, 'Caterpie', 'Bug', 45, 1, NULL, FALSE),
    (137, 'Weedle', 'Bug', 40, 1, NULL, FALSE),
    (138, 'Paras', 'Bug', 35, 1, NULL, FALSE),
    (139, 'Venonat', 'Bug', 60, 1, NULL, FALSE),
    (140, 'Scyther', 'Bug', 70, 1, NULL, FALSE),
    -- Fighting 타입
    (141, 'Mankey', 'Fighting', 40, 1, NULL, FALSE),
    (142, 'Machop', 'Fighting', 70, 1, NULL, FALSE),
    (143, 'Hitmonlee', 'Fighting', 50, 1, NULL, FALSE),
    (144, 'Hitmonchan', 'Fighting', 50, 1, NULL, FALSE),
    (145, 'Machamp', 'Fighting', 90, 1, NULL, FALSE),
    -- Psychic 타입
    (146, 'Abra', 'Psychic', 25, 1, NULL, FALSE),
#     (147, 'Kadabra', 'Psychic', 40, 2, 146, FALSE),
#     (148, 'Alakazam', 'Psychic', 55, 3, 147, FALSE),
    (149, 'Mr. Mime', 'Psychic', 40, 1, NULL, FALSE),
    (150, 'Mewtwo', 'Psychic', 106, 1, NULL, TRUE),
    -- Ice 타입
    (151, 'Shellder', 'Ice', 30, 1, NULL, FALSE),
    (152, 'Jynx', 'Ice', 65, 1, NULL, FALSE),
    (153, 'Seel', 'Ice', 65, 1, NULL, FALSE),
    (154, 'Dewgong', 'Ice', 90, 1, NULL, FALSE),
    (155, 'Cloyster', 'Ice', 50, 1, NULL, FALSE),
    -- Ground 타입
    (156, 'Sandshrew', 'Ground', 50, 1, NULL, FALSE),
    (157, 'Diglett', 'Ground', 10, 1, NULL, FALSE),
    (158, 'Geodude', 'Ground', 40, 1, NULL, FALSE),
    (159, 'Onix', 'Ground', 35, 1, NULL, FALSE),
    (160, 'Rhyhorn', 'Ground', 80, 1, NULL, FALSE),
    -- Rock 타입
    (161, 'Geodude', 'Rock', 40, 1, NULL, FALSE),
    (162, 'Onix', 'Rock', 35, 1, NULL, FALSE),
    (163, 'Kabuto', 'Rock', 30, 1, NULL, FALSE),
    (164, 'Kabutops', 'Rock', 60, 1, NULL, FALSE),
    (165, 'Omanyte', 'Rock', 35, 1, NULL, FALSE),
    -- Ghost 타입
    (166, 'Gastly', 'Ghost', 30, 1, NULL, FALSE),
    (167, 'Haunter', 'Ghost', 45, 2, 166, FALSE),
    (168, 'Gengar', 'Ghost', 60, 3, 167, FALSE),
    (169, 'Misdreavus', 'Ghost', 60, 1, NULL, FALSE),
    (170, 'Lavitar', 'Ghost', 50, 1, NULL, FALSE),
    -- Dragon 타입
    (171, 'Dratini', 'Dragon', 41, 1, NULL, FALSE),
    (172, 'Dragonair', 'Dragon', 61, 2, 171, FALSE),
    (173, 'Dragonite', 'Dragon', 91, 3, 172, FALSE),
    (174, 'Aerodactyl', 'Dragon', 80, 1, NULL, FALSE),
    (175, 'Mew', 'Dragon', 100, 1, NULL, TRUE),
    -- Steel 타입
    (176, 'Magnemite', 'Steel', 25, 1, NULL, FALSE),
    (177, 'Magneton', 'Steel', 50, 1, NULL, FALSE),
    (178, 'Steelix', 'Steel', 75, 1, NULL, FALSE),
    (179, 'Scizor', 'Steel', 70, 1, NULL, FALSE),
    (180, 'Skarmory', 'Steel', 65, 1, NULL, FALSE),
    -- Fairy 타입
    (181, 'Clefairy', 'Fairy', 70, 1, NULL, FALSE),
    (182, 'Clefable', 'Fairy', 95, 1, NULL, FALSE),
    (183, 'Jigglypuff', 'Fairy', 115, 1, NULL, FALSE),
    (184, 'Wigglytuff', 'Fairy', 140, 1, NULL, FALSE),
    (185, 'Mew', 'Fairy', 100, 1, NULL, TRUE);

INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    -- evolves_from에 해당하는 포켓몬 더미 데이터 추가
#     (193, 'Tyranitar', 'Rock', 100, 3, 247, FALSE), -- Tyranitar
    (195, 'Salamence', 'Dragon', 95, 3, 148, FALSE), -- Salamence
    (196, 'Machamp', 'Fighting', 90, 3, 142, FALSE), -- Machamp
    (198, 'Nidoking', 'Poison', 81, 3, 135, FALSE), -- Nidoking
    (200, 'Gengar', 'Ghost', 60, 3, 167, FALSE), -- Gengar
    (202, 'Clefable', 'Fairy', 95, 1, NULL, FALSE), -- Clefable
    (204, 'Lugia', 'Legendary', 106, 1, NULL, TRUE), -- Lugia
    (205, 'Alakazam', 'Champion', 55, 3, 147, FALSE); -- Alakazam
-- evolves_from에 해당하는 포켓몬 더미 데이터 추가
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (246, 'Larvitar', 'Rock', 50, 1, NULL, FALSE); -- Larvitar
-- evolves_from에 해당하는 포켓몬 더미 데이터 추가
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (247, 'Pupitar', 'Rock', 70, 2, 246, FALSE); -- Pupitar
-- Dark 타입의 포켓몬 더미 데이터 생성
INSERT INTO poke_dex (monster_id, monster_name, monster_type, max_hp, evolution_stage, evolves_from, is_legendary)
VALUES
    (206, 'Poochyena', 'Dark', 35, 1, NULL, FALSE), -- Poochyena
    (207, 'Mightyena', 'Dark', 70, 2, 206, FALSE); -- Mightyena


SELECT DISTINCT poke_dex.monster_type FROM poke_dex;
-- Pokemon Trainer 더미 데이터 삽입
INSERT INTO pokemon_trainer (name, trainer_type)
VALUES
    ('Ash Ketchum', 'Fire'),
    ('Misty', 'Water'),
    ('Brock', 'Rock'),
    ('Red', 'Fire'),
    ('Blue', 'Water'),
    ('Green', 'Grass'),
    ('Yellow', 'Electric'),
    ('Gold', 'Ground'),
    ('Silver', 'Ice'),
    ('Crystal', 'Psychic'),
    ('Ruby', 'Rock'),
    ('Sapphire', 'Steel'),
    ('Emerald', 'Dragon'),
    ('Diamond', 'Fighting'),
    ('Pearl', 'Flying'),
    ('Platinum', 'Poison'),
    ('Black', 'Bug'),
    ('White', 'Ghost'),
    ('X', 'Dark'),
    ('Y', 'Fairy'),
    ('Sun', 'Normal'),
    ('Moon', 'Legendary'),
    ('Champion', 'Champion');

-- Pokemon 더미 데이터 삽입
INSERT INTO pokemon (monster_id, skill1, skill2, owner, nickname, hp, is_surfable, is_flyable)
VALUES
    (1, 1, 3, 1, 'Pikachu', 35, FALSE, FALSE),
    (2, 1, 2, 1, 'Charizard', 78, TRUE, TRUE),
    (3, 1, NULL, 2, 'Squirtle', 44, TRUE, FALSE),
    (4, 1, NULL, 3, 'Pikachu2', 35, FALSE, FALSE),
    (5, 2, NULL, 4, 'Jigglypuff', 115, FALSE, FALSE),
    (6, 3, NULL, 5, 'Geodude', 40, FALSE, FALSE),
    (7, 4, NULL, 6, 'Gastly', 30, FALSE, FALSE),
    (8, 5, NULL, 7, 'Onix', 35, FALSE, FALSE),
    (9, 6, NULL, 8, 'Eevee', 55, FALSE, FALSE),
    (10, 7, NULL, 9, 'Vaporeon', 130, FALSE, FALSE),
    (11, 8, NULL, 10, 'Jolteon', 65, FALSE, FALSE),
    (12, 9, NULL, 11, 'Flareon', 65, FALSE, FALSE),
    (13, 10, NULL, 12, 'Snorlax', 160, FALSE, FALSE),
    (14, 11, NULL, 13, 'Dragonite', 91, FALSE, FALSE),
    (15, 12, NULL, 14, 'Mewtwo', 106, FALSE, FALSE),
    (16, 13, NULL, 15, 'Mew', 100, FALSE, FALSE),
    (17, 14, NULL, 16, 'Lapras', 130, FALSE, FALSE),
    (18, 15, NULL, 17, 'Gyarados', 95, FALSE, FALSE),
    (19, 16, NULL, 18, 'Arcanine', 90, FALSE, FALSE),
    (20, 17, NULL, 19, 'Alakazam', 55, FALSE, FALSE);

-- Battle Result 더미 데이터 삽입
INSERT INTO battle_result (pokemon_id_1, pokemon_id_2, winner_id, result_memo)
VALUES
    (1, 2, 2, 'Charizard wins against Pikachu'),
    (3, 1, NULL, 'Squirtle and Bulbasaur battle results in a draw'),
    (2, 3, 2, 'Charizard wins against Squirtle'),
    (4, 5, 4, 'Jigglypuff wins against Geodude'),
    (6, 7, NULL, 'Gastly and Onix battle results in a draw'),
    (8, 9, 8, 'Eevee wins against Vaporeon'),
    (10, 11, 10, 'Jolteon wins against Flareon'),
    (12, 13, NULL, 'Mewtwo and Mew battle results in a draw'),
    (14, 15, 14, 'Dragonite wins against Lapras'),
    (16, 17, 16, 'Gyarados wins against Arcanine'),
    (18, 19, NULL, 'Alakazam and Snorlax battle results in a draw'),
    (20, 1, 1, 'Pikachu wins against Alakazam');

-- 트레이너별 포켓몬 더미 데이터 삽입
INSERT INTO pokemon (monster_id, skill1, skill2, owner, nickname, hp, is_surfable, is_flyable)
SELECT
    monster_id,
    FLOOR(RAND() * 20) + 1,  -- 랜덤한 스킬 선택 (1부터 20까지)
    NULL,                    -- 두 번째 스킬은 NULL로 설정
    FLOOR(RAND() * 20) + 1,  -- 랜덤한 트레이너 선택 (1부터 20까지)
    CONCAT(monster_name, '_', FLOOR(RAND() * 100)),  -- 랜덤한 닉네임 생성
    FLOOR(RAND() * 100) + 50,  -- 랜덤한 HP 생성 (50부터 150까지)
    CASE WHEN monster_type = 'Water' OR evolution_stage > 1 THEN TRUE ELSE FALSE END, -- is_surfable 값 설정
    CASE WHEN monster_type IN ('Psychic', 'Dragon', 'Ghost') THEN TRUE ELSE FALSE END   -- is_flyable 값 설정
FROM poke_dex
WHERE monster_id BETWEEN 1 AND 20  -- 1부터 20까지의 포켓몬만 선택
GROUP BY 4, monster_id
HAVING COUNT(*) < 5  -- 각 트레이너가 5마리 이상의 포켓몬을 가지도록
UNION ALL
SELECT
    monster_id,
    FLOOR(RAND() * 20) + 1,  -- 랜덤한 스킬 선택 (1부터 20까지)
    NULL,                    -- 두 번째 스킬은 NULL로 설정
    FLOOR(RAND() * 20) + 1,  -- 랜덤한 트레이너 선택 (1부터 20까지)
    CONCAT(monster_name, '_', FLOOR(RAND() * 100)),  -- 랜덤한 닉네임 생성
    FLOOR(RAND() * 100) + 50,  -- 랜덤한 HP 생성 (50부터 150까지)
    CASE WHEN monster_type = 'Water' OR evolution_stage > 1 THEN TRUE ELSE FALSE END, -- is_surfable 값 설정
    CASE WHEN monster_type IN ('Psychic', 'Dragon', 'Ghost') THEN TRUE ELSE FALSE END   -- is_flyable 값 설정
FROM poke_dex
WHERE evolution_stage >= 2  -- 진화 단계가 2 이상인 포켓몬만 선택
GROUP BY 4, monster_id
HAVING COUNT(*) < 1;  -- 각 트레이너가 진화 단계가 2 이상인 포켓몬을 1마리 이상 가지도록

-- 각 트레이너가 가진 타입의 포켓몬 중 한 종류씩 모두 더미데이터로 생성
INSERT INTO pokemon (monster_id, skill1, skill2, owner, nickname, hp, is_surfable, is_flyable)
SELECT
    pd.monster_id,
    ps.id,
    NULL,
    pt.id,
    CONCAT(pd.monster_name, '_', FLOOR(RAND() * 100)),
    FLOOR(RAND() * 100) + 50,
    CASE WHEN types.monster_type = 'Water' OR evolution_stage > 1 THEN TRUE ELSE FALSE END, -- is_surfable 값 설정
    CASE WHEN types.monster_type IN ('Psychic', 'Dragon', 'Ghost') THEN TRUE ELSE FALSE END   -- is_flyable 값 설정
FROM (
    SELECT
        trainer_type,
        monster_type,
        MIN(pokemon_trainer.id) as trainer_id
    FROM pokemon_trainer
    JOIN poke_dex ON pokemon_trainer.trainer_type = poke_dex.monster_type
    GROUP BY trainer_type
) AS types
JOIN pokemon_trainer AS pt ON types.trainer_type = pt.trainer_type
JOIN poke_dex AS pd ON types.monster_type = pd.monster_type
JOIN pokemon_skills AS ps ON pd.monster_id = ps.id;

