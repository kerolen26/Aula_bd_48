#criação do bando de dados
create database empresa_xpto; 

#ativar o banco de dados
use empresa_xpto;

#criar a tabela
create table funcionarios(
id int auto_increment,
nome varchar(60),
sobrenome varchar(60),
salario decimal (10,2),
primary key (id)
);


Load data infile ' C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/funcionarios.csv'
into table funcionarios
fields terminated by ','
lines terminated by '\n'
ignore 1 lines
(nome,sobrenome,salario) set id = null;

#selecionar os funcionários
select * from funcionarios;

#selecionar o salário dos funcionários menor que 1238.11
select * from funcionarios where salario<1238.11;

#selicionar o nome e sobrenome dos funcionários,ordenardo pelo salário de até 5 funcionários
select nome,sobrenome from funcionarios order by salario limit 5;

#selecionar o nome e sobrenome dos funcionários,ordem do salário decrescente de até 5 pessoas
select nome,sobrenome from funcionarios order by salario desc limit 5;

#selecionar todos os funcionários com o nome Gil ou Carlo
select * from funcionarios where nome= 'Gil' or nome=' Carlo';

#selecionar todos os funcionários com o nome Gil ou Carlo com o salário maior que 15000
select * from funcionarios where (nome= 'Gil' or nome=  'Carlo') and salario > 15000;

#selecionar todos os funcionários com o sobrenome Bem ou Ramet
select * from funcionarios where sobrenome = 'Bem' or sobrenome= 'Ramet';

#selecionar todos os funcionários com o sobrenome Bem ou Ramet com o salário menor que 5000
select * from funcionarios where (sobrenome= 'Bem' or sobrenome= 'Ramet')and salario <5000;

#selecionar todos os funcionários com o salário entre 5000 e 1000
select * from funcionarios where salario between 5000 and 1000;

#selecionar todos os funcionários com o salário entre 2000 entre 3000
select nome,sobrenome from funcionarios where salario between 2000 and 3000;

#selecionar a soma de todos os salários dos funcionários
select sum(salario)as soma_salarios from funcionarios;

#selecionar a média de todos os salários dos funcionários
select AVG(salario) AS media_salarios from funcionarios;

#selecionar o total de funcionários 
select count(*) AS total_funcionarios from funcionarios;

#selecionar o maior salários dos funcionários
select max(salario) AS maior_salario from funcionarios;

#selecionar o menor salário dos funcionários
select min(salario) AS maior_salario from funcionarios;

#contagem total de funcionários com o salário maior que 15000
select count(*) AS total from funcionarios where salario > 15000;

#contagem total de funcionários com o salário entre 1212 e 5000
select count(*) AS total from funcionarios where salario between 1212 and 5000;

#contagem total de funcionários com o salário entre 5001 e 10000
select count(*) AS total from funcionarios where salario between 5001 and 10000;

#contagem 	 total de funcionários com o salário entre 10001 e 15000
select count(*) AS total from funcionarios where salario between 10001 and 15000;