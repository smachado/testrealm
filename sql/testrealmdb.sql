drop database if exists testrealmdb;
create database testrealmdb;
create table testrealmdb.users (
	username	varchar(15) not null primary key,
	password	char(32) not null
);

create table testrealmdb.user_roles (
	username	varchar(15) not null,
	rolename	varchar(15) not null,
	primary key (username,rolename),
	foreign key (username) references testrealmdb.users(username)
);

insert into testrealmdb.users values (
	'alicia',
	sha2('alicia', 0)
);

insert into testrealmdb.user_roles values (
	'alicia',
	'registered'
);
