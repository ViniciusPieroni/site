create database site;
use site;
-- criando tabela usuarios com seus respectivos usuarios
create table usuarios(
idusuarios int primary key auto_increment, nome_usuarios varchar(45),email_usuarios varchar(45),senha_usuarios char(6)
)auto_increment=1;

insert into usuarios values
(null,'Anderson','ander@gmail.com','140789'),
(null,'Sarah','sarah@gmail.com','138965'),
(null,'Clara','clarinha@gmail.com','764892'),
(null, 'Nabuko','god@gmail.com','658901');

-- criando a tabela personagens_preferidos e seus respectivos personagens
create table personagens_preferidos(
idpersonagens int primary key auto_increment,Nome_personagens varchar(45), idade_personagens double, sexo char(1), check (sexo='f' or  sexo='m'),
fk_usuario int, foreign key (fk_usuario) references usuarios(idusuarios)
)auto_increment=1001;

insert into personagens_preferidos values
(null,'Leon S. Kennedy','35','m',1 ),
(null,'Clarei Redfield','34','f',2),
(null,'Jill Valentine',24,'f',3),
(null,'Chris Redfield','40',"m",4);

-- criando a tabela  jogo dos seus respectivos usuarios

create table jogo(
idjogo int primary key auto_increment, jogos_ja_jogados varchar(100), lancamento1 date, lancamento2 date null, lancamento3 date null
)auto_increment=10001;


insert into jogo values(null,'Resident Evil 2,Resident Evil 4,Resident Evil 6  ','2019-01-25','2005-01-11','2012-10-02');
insert into jogo values(null,'Resident Evil 2','2019-01-25','0000-00-00 ','0000-00-00');
insert into jogo values(null,'Resident Evil 1, Resident Evil 3, Resident Evil 5','1996-03-22','2002-04-04','2009-03-05');
insert into jogo values(null,'Resident Evil 1,Resident Evil 5,Resident Evil 6','1996-03-22','2009-03-05','2012-10-02');

-- criando a tabela login e seus respectivas contas
create table datas(
qnto_tempo_joga char(5),qndo_comecou_a_jogar date,
fk_usuarios int,foreign key (fk_usuarios) references usuarios(idusuarios),
fk_jogo int, foreign key (fk_jogo)references jogo(idjogo)
);

insert into datas value ('8','2013-02-10',1,10001);
insert into datas value ('5','2016-12-06',2,10002);
insert into datas value ('2','2019-07-04',3,10003);
insert into datas value ('9','2012-02-10',4,10004);

-- select individual de todas as tabelas
select * from usuarios;
select * from personagens_preferidos;
select * from jogo;
select * from datas;

-- join uma tabela
select* from usuarios join personagens_preferidos on fk_usuario = idusuarios;
-- join duas tabelas 
select* from usuarios join datas on fk_usuarios = idusuarios join jogo on fk_jogo = idjogo ;
-- join três
select* from usuarios join datas on fk_usuarios = idusuarios join personagens_preferidos on fk_usuario = idusuarios join jogo on fk_jogo = idjogo;
-- avg,som,max,min 
select avg(qnto_tempo_joga) from datas;
-- subquery
select*from jogo where jogos_ja_jogados in (select qnto_tempo_joga from datas);




