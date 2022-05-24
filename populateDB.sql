INSERT INTO skills (industry, skill_level) VALUES
('Java',  'Junior'),
('Java',  'Middle'),
('Java',  'Senior'),
('C++',  'Junior'),
('C++',  'Middle'),
('C++',  'Senior'),
('C#',  'Junior'),
('C#',  'Middle'),
('C#',  'Senior'),
('1C',  'Junior'),
('1C',  'Middle'),
('1C',  'Senior');

INSERT INTO companies (name, description) VALUES
('RASK In-AGRO', 'The company implements and maintains IT management and accounting systems for industrial and agricultural enterprises'),
('Quartz', 'Software for agriculture and utilities');

INSERT INTO customers (name, EDRPOU, product) VALUES
('Орільський об"єднаний елеватор, ТОВ', '30921733', 'Бухгалтерія елеватора, млина і комбікормового заводу'),
('Орільський об"єднаний елеватор, ТОВ', '30921733','BAS АГРО. Бухгалтерія елеватора'),
('Корсунь АФ, СТОВ', '32012939', 'BAS АГРО. Бухгалтерія (сг)'),
('Агросоюз-РП, ТОВ, с. Мліїв', '35013940', 'Бухгалтерія сільськогосподарського підприємства'),
('BI Group - Engineering', '160540301', 'ERP');

INSERT INTO developers (full_name, birth_date, sex, email, skype) VALUES
('Neroda Dmitry', '1982-05-09', 'male', 'Neroda.D@inagro.com.ua', 'd.ramoss'),
('Kravets Andrey', '1975-01-14', 'male', 'Kravets.A@inagro.com.ua', 'acrom_sc'),
('Spivak Galina', '1972-07-12', 'female', 'Spivak.G@inagro.com.ua', 'gala_spivak'),
('Demchenko Bogdan', '1992-11-13', 'male', 'demchenko.b@ukr.net', 'bogdan_d6'),
('Huzii Anna', '1984-07-08', 'female', 'anna_guzii@ukr.net', 'anna_guzii'),
('Onishchenko Elena', '1990-01-02', 'female', 'onishchenko.l@inagro.com.ua', 'lena.stadnik32');

INSERT INTO project (name, description, company_id, customer_id) VALUES
('Казахстан БиАй-Групп', 'ERP з доробкою для управління бізнесом будівельної компанії', 1, 5),
('УкрАгроКом', 'Програма для компанії УкрАгроКом', 1, 2),
('КУП Агро', 'Програма для комплекснго управління сільськогосподарським підприємством', 1, 3),
('Квартал', 'Програма для комунальних підприємств', 2, 4),
('Управління АГРО-бізнесом для України', 'Програма для управління сільськогосподарським підприємством', 2, 4);

INSERT INTO developers_skills (developer_id, skill_id) VALUES
(1,12),
(1,2),
(1,8),
(2,11),
(3,2),
(3,11),
(4,1),
(4,11),
(5,2),
(5,11),
(6,11);

INSERT INTO projects_developers (project_id, developer_id) VALUES
(1,6),
(1,2),
(1,4),
(2,5),
(3,2),
(3,3),
(4,2),
(4,1),
(5,2),
(5,6);
