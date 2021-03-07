create database SOA;
use soa;
show tables;

create table dispositivo (id int auto_increment primary key not null, decricao varchar(45), status varchar(20), criado_em datetime);
create table logs_acesso (id int auto_increment primary key not null, on_em datetime, off_em datetime, id_dispositivo int not null, id_usuario int not null, foreign key(id_dispositivo) references dispositivo(id), foreign key(id_usuario) references usuario(id));
create table usuario (id int auto_increment primary key not null, nome varchar(45));

select * from dispositivo;
select * from logs_acesso;
select * from usuario;
