CREATE DATABASE empresa3_1e;
use empresa3_1e;

CREATE TABLE departamento(
dcodigo int auto_increment PRIMARY KEY,
dnome varchar(50)
);

CREATE TABLE funcionario(
funcodigo int auto_increment PRIMARY KEY,
dcodigo int,
nome varchar(50),
nascimento date,
salario int,
FOREIGN KEY(dcodigo) REFERENCES departamento(dcodigo)
);

CREATE TABLE dependente(
depcodigo int auto_increment PRIMARY KEY,
funcodigo int,
depnome varchar(50),
FOREIGN KEY(funcodigo) REFERENCES funcionario(funcodigo)
);

INSERT INTO departamento(dcodigo, dnome)
values(1,"RH"),
	  (2,"TI");
      
INSERT INTO funcionario(funcodigo, dcodigo, nome, nascimento, salario)
values(1,1,"Fulano",'2000-12-12',100);

INSERT INTO dependente(depcodigo, funcodigo, depnome)
values(1,1,"Joaquina");