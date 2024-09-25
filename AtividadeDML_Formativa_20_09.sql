CREATE DATABASE  gervenda_1e;
use gervenda_1e;

CREATE TABLE produtos(
produto_id int auto_increment PRIMARY KEY,
nome varchar(50),
preco decimal(10,2),
estoque int
);

CREATE TABLE vendas(
venda_id int auto_increment PRIMARY KEY,
produto_id int,
quantidade int,
data_venda date,
FOREIGN KEY(produto_id) REFERENCES produtos(produto_id)
);

INSERT INTO produtos(nome, preco, estoque)
values("Notebook Dell",7000.00,35),
	  ("Notebook Positivo",7000.00,35),
	  ("Notebook Lenovo",5000.00,35),
      ("Notebook Alienware",35000.00,35),
      ("Notebook Acer",9000.00,35);

INSERT INTO vendas(produto_id, quantidade, data_venda)
values (1,5,"2024-09-20"),
	   (2,3,"2024-09-20"),
       (3,1,"2024-09-20"),
       (4,8,"2024-09-20"),
       (5,6,"2024-09-20");
       
update produtos
set preco = 6500.00
where produto_id = 1;     

update vendas
set quantidade = 7
where venda_id = 1;

delete from produtos
where produto_id =3;

delete from vendas
where venda_id =1;


select * from vendas
where venda_id = 2;

select quantidade, data_venda from vendas;


select * from produtos;
select nome, estoque from produtos;