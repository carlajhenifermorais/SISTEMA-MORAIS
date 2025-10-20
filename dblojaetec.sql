drop database if exists dblojaetec;
create database dblojaetec;
use dblojaetec;
create table usuarios(
	iduser int primary key auto_increment,
    usuario varchar (50) not null,
    fone varchar(15),
    login varchar(15) unique,
    senha varchar(15) not null
);
insert into usuarios values('joao','982738993','joaos','joao2025');
create table clientes(
	idcli int primary key auto_increment,
	nomecli varchar(50) not null,
	endcli varchar(100),
	fonecli varchar(15) not null,
	emailcli varchar(50) 
);
insert into clientes values('fernando', 'Rua cinco, 245, Belo Horizonte', '935454343', 'fernando@gmail.com'),
('davi', 'Rua reis, 656, Belo Horizonte', '976867868', 'querido@gmail.com')
;
create table ordem_servico(
	os int primary key auto_increment,
	data_os timestamp default current_timestamp,
	equipamento varchar(150) not null,
	defeito varchar(150) not null,
	servico varchar(150),
	tecnico varchar(30),
	valor decimal(10,2),
	idcli int not null,
	foreign key(idcli) references clientes(idcli)
);