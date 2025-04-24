-- 01. Criar esquema avaliacaocontinua

create schema avaliacaocontinua

-- 02. Criar tabela company

create table avaliacaocontinua.company(
	company_name varchar(50) not null primary key,
	city varchar(20)
)

-- 03. Criar tabela employee

create table avaliacaocontinua.employee(
	person_name varchar(50) not null primary key,
	street varchar(20),
	city varchar(20)
)

-- 04. Criar tabela manages

create table avaliacaocontinua.manages(
	person_name varchar(50) not null primary key,
	manager_name varchar(50)
)

-- 05. Criar tabela works

create table avaliacaocontinua.works(
	person_name varchar(50) not null primary key,
	company_name varchar(50) not null,
	salary int
)

-- 06. Criar referencia entre works e employee

alter table avaliacaocontinua.works
	add constraint fk_personname_works
	foreign key (person_name)
	references avaliacaocontinua.employee(person_name)
	on delete cascade
	on update cascade;

-- 07. Criar referencia entre works e company

alter table avaliacaocontinua.works
	add constraint fk_companyname
	foreign key (company_name)
	references avaliacaocontinua.company(company_name)
	on delete cascade
	on update cascade;

-- 08. Criar referencia entre manages e employee

alter table avaliacaocontinua.manages
	add constraint fk_personname_manages
	foreign key (person_name)
	references avaliacaocontinua.employee(person_name)
	on delete cascade
	on update cascade;
