create database ska;
use ska;

create table Usuario (
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha varchar(16)
);

create table Banda (
idBanda int primary key auto_increment,
nome varchar(45),
fkUsuario int,
foreign key (fkUsuario) references Usuario (idUsuario)
);

create table Quiz (
idQuiz int primary key auto_increment,
resposta1 varchar(45),
resposta2 varchar(45),
resposta3 varchar(45),
resposta4 varchar(45),
resposta5 varchar(45),
fkUsuario int,
foreign key (fkUsuario) references Usuario (idUsuario)
);

create table Aviso (
idAviso int primary key auto_increment,
titulo varchar(100),
descricao varchar(150),
fkUsuario int,
foreign key (fkUsuario) references Usuario (idUsuario)
);

select * from Usuario;
select * from Aviso;