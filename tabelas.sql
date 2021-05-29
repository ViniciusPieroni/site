create database site;
use site;
-- criando tabela usuarios com seus respectivos usuarios
create table usuarios(
idusuarios int primary key auto_increment, nome_usuarios varchar(45), idade_usuarios double, sexo char(1), check (sexo='f' or  sexo='m')
)auto_increment=1;

insert into usuarios values
(null,'Anderson','14','m'),
(null,'Sarah','17','f'),
(null,'Clara','20','f'),
(null, 'Nabuko','32','m');

-- criando a tabela login e seus respectivas contas
create table login(
idlogin int primary key auto_increment,Nome_login varchar(45),email_login varchar(45),senha_login char(6),
fk_usuario int, foreign key (fk_usuario) references usuarios(idusuarios)
)auto_increment=1001;

insert into login values
(null,'addgmon','ander@gmail.com','140789',1),
(null,'morganinhadark','sarah@gmail.com','138965',2),
(null,'arlequina','clarinha@gmail.com','764892',3),
(null,'hiato','god@gmail.com','658901',4);

-- criando a tabela  jogadores com seus respectivos usuarios

create table jogadores(
idjogadores int primary key auto_increment, nome_jogadores varchar(45), qnto_jogos_ja_jogo double,speed_runs double
)auto_increment=10001;

insert into jogadores values
(null,'addgmon',2,1),
(null,'morganinhadark',7,0),
(null,'arlequina',5,2),
(null,'hiato','10',3);

-- criando a tabela login e seus respectivas contas
create table usuarios_has_jogadores(
qnto_tempo_joga char(5),qndo_omecou_a_jogar date,
fk_usuarios int,foreign key (fk_usuarios) references usuarios(idusuarios),
fk_jogadores int, foreign key (fk_jogadores)references jogadores(idjogadores)
);

insert into usuarios_has_jogadores value ('8','2013-02-10',1,10001);
insert into usuarios_has_jogadores value ('5','2016-12-06',2,10002);
insert into usuarios_has_jogadores value ('2','2019-07-04',3,10003);
insert into usuarios_has_jogadores value ('9','2012-02-10',4,10004);








