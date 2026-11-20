
DROP TABLE IF EXISTS laboratories CASCADE;
DROP TABLE IF EXISTS "Kafedry" CASCADE;


CREATE TABLE "Kafedry" (
    "Nomer_kafedry" SERIAL PRIMARY KEY, 
    "Kod_faculteta" INTEGER NOT NULL,
    "Name_Kafedry" TEXT NOT NULL,
    "Vipusk_Kafedry" BOOLEAN NOT NULL,
    "Site" TEXT NOT NULL,
    "Telephone" INTEGER NOT NULL
);


CREATE TABLE laboratories (
    nomer_lab SERIAL PRIMARY KEY,
    deyatelnost TEXT NOT NULL,
    zaved_lab TEXT NOT NULL,
    kolichestvo_mes INTEGER NOT NULL,
    proektnoe_obor BOOLEAN NOT NULL,
    nomer_kafedry INTEGER NOT NULL,
    name TEXT NOT NULL,
    CONSTRAINT fk_laboratories_kafedry
        FOREIGN KEY (nomer_kafedry)
        REFERENCES "Kafedry" ("Nomer_kafedry")
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


INSERT INTO "Kafedry" ("Kod_faculteta", "Name_Kafedry", "Vipusk_Kafedry", "Site", "Telephone") VALUES
(1, 'Кафедра информатики', true, 'http://it.ru', 1112233),
(1, 'Кафедра математики', false, 'http://math.ru', 2223344),
(2, 'Кафедра физики', true, 'http://phys.ru', 3334455),
(2, 'Кафедра химии', false, 'http://chem.ru', 4445566),
(3, 'Кафедра истории', false, 'http://hist.ru', 5556677),
(3, 'Кафедра иностранных языков', false, 'http://lang.ru', 6667788),
(4, 'Кафедра экономики', true, 'http://econ.ru', 7778899),
(4, 'Кафедра менеджмента', false, 'http://manage.ru', 8889900),
(5, 'Кафедра права', true, 'http://law.ru', 9990011),
(5, 'Кафедра психологии', false, 'http://psy.ru', 1234567);


INSERT INTO laboratories ("name", "deyatelnost", "zaved_lab", "kolichestvo_mes", "proektnoe_obor", "nomer_kafedry") VALUES
('Лаборатория программирования', 'Разработка ПО', 'Иванов И.И.', 15, true, 1),
('Лаборатория баз данных', 'Проектирование БД', 'Петров П.П.', 20, false, 1),
('Лаборатория моделирования', 'Моделирование', 'Сидоров С.С.', 10, true, 2),
('Лаборатория физики', 'Исследования', 'Кузнецов К.К.', 12, true, 3),
('Лаборатория химии', 'Синтез', 'Смирнова А.А.', 8, false, 4),
('Лаборатория истории', 'Архив', 'Волков В.В.', 10, false, 5),
('Лаборатория лингвистики', 'Анализ текстов', 'Морозова М.М.', 15, true, 6),
('Лаборатория экономики', 'Аналитика', 'Новиков Н.Н.', 18, false, 7),
('Лаборатория права', 'Исследования', 'Федоров Ф.Ф.', 12, true, 9),
('Лаборатория психологии', 'Тестирование', 'Егорова Е.Е.', 20, true, 10);