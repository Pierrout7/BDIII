 -- BDIII A01

create database bd3;
use bd3;

create table alunos (
	id int(11) primary key auto_increment,
    nome varchar(255) not null,
    nascimento date default null
);

insert into alunos (nome, nascimento) values ('leo', '2011-03-04');
insert into alunos (nome, nascimento) values ('juju', '2010-10-08');
insert into alunos (nome, nascimento) values ('fred', '2008-05-12');
insert into alunos (nome, nascimento) values ('joao', null);
insert into alunos (nome, nascimento) values ('joao', '2007-07-05');

-- selecionar todos os registros
select * from alunos;

-- somente nome
select nome, nascimento from alunos;

-- com filtro
select nascimento from alunos
where nome = 'fred'
AND
nascimento is not null;

-- filtrar os resultados que tenham o campo nascimento nulo
-- -AND: operador lógico, utilizado toda vez que quiser adicionar, nesse caso, o resultado 'not null'

-- selecionar a lista de todos os nomes sem repetição
select distinct nome, nascimento
from alunos;

-- lista de presença ordenada em ordem alfabética
select * from alunos 
order by nome asc;

-- lista de presença ordenada na ordem dos mais novos aos mais velhos
select * from alunos 
order by nascimento desc;

-- listar somente dois alunos
select  * from alunos 
limit 2;

--  2 alunos mais velhos
select * from alunos 
where nascimento is not null
order by nascimento asc
limit 2;



