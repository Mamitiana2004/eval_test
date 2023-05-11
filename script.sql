create database parking;
\c parking

create table admin(
    id serial primary key,
    nom varchar(255) not null,
    password text
);

create table tokenAdmin(
    id serial primary key,
);

insert into admin(nom,password) values ('admin','21232f297a57a5a743894a0e4a801fc3');

create table tokenAdmin(
    id serial primary key,
    token text not null,
    idAdmin int references admin(id),
    dateExp Timestamp without time zone
);



create table client(
    id serial primary key,
    nom varchar(250) not null,
    prenom varchar(250) not null,
    tel varchar(50) not null,
    pseudo varchar(250) not null,
    password text not null
);

create table tokenClient(
    id serial primary key,
    token text not null,
    idclient int references client(id),
    dateExp Timestamp without time zone
);
