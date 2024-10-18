create database Libreta;

use Libreta;

drop table Libreta;

create table libreta(
	id INT auto_increment key,
	nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);

show TABLES;

describe libreta;

insert into libreta (nombre, domicilio, telefono)
values  ('Alberto Mores','Colon 123','4234567'),
		('Juan Torres','Avellaneda 135','4458787'); 
        
select * from libreta;

update libreta set domicilio = 'Melendez 123' where id = 1;

insert into libreta (nombre, domicilio, telefono)
values  ('María Pérez','San Martín 453','4789654'),
		('Carlos García','Rivadavia 678','4378123'),
		('Sofía López','Belgrano 890','4587963'),
		('Fernando Díaz','Mitre 1123','4283745'),
		('Lucía Fernández','Sarmiento 234','4467890');


select count(*) from libreta;



