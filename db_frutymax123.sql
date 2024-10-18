create database frutymax;

use frutymax;

create table Clientes (
	clienteId int auto_increment primary key,
    nombre varchar(50) not null,
    email varchar(50) not null unique,
    celular varchar(10) not null,  
    historialPedidos int
);

create table Pedido (
	pedidoId int auto_increment primary key,
    clienteId int,
    estado varchar(20) not null,
    total double,
    fecha datetime DEFAULT current_timestamp,
    Foreign Key (clienteId) REFERENCES Clientes(clienteId)
);

create table Factura (
	facturaId int auto_increment primary key,
	pedidoId int not null,
	fechaFactura datetime default current_timestamp,
	total double,
	foreign key (pedidoId) references Pedido(pedidoId)
);

CREATE TABLE Empleado (
    empleadoId INT auto_increment PRIMARY KEY, 
    nombre VARCHAR(100), 
    contacto VARCHAR(100) 
);
 
CREATE TABLE Cajero (
    empleadoId INT auto_increment PRIMARY KEY, 
    rolCajero VARCHAR(50),
    FOREIGN KEY (empleadoId) REFERENCES Empleado(empleadoId) 
);
 
CREATE TABLE Administrador (
    empleadoId INT auto_increment PRIMARY KEY, 
    rolAdmin VARCHAR(50), 
    FOREIGN KEY (empleadoId) REFERENCES Empleado(empleadoId) 
);
 
CREATE TABLE Inventario (
    inventarioId INT PRIMARY KEY,
    empleadoId INT, 
	cantidadDisponible INT,
    FOREIGN KEY (empleadoId) REFERENCES Empleado(empleadoId)
);

create table Productos (
    productoId int AUTO_INCREMENT PRIMARY KEY,
    inventarioId int,
    nombre VARCHAR(30) not null,
    precio DOUBLE,
    descripcion VARCHAR(100) not null,
    categoria VARCHAR(20) not null,
    foreign key (inventarioId) REFERENCES Inventario(inventarioId)
);

create table Pedido_Productos(
    pedidoId INT,
    productoId INT,
    primary key (pedidoId, productoId),
    foreign key (pedidoId) REFERENCES Pedido(pedidoId),
    foreign Key (productoId) REFERENCES Productos(productoId)
);

create table Proveedor(
	proveedorId int auto_increment primary key,
	nombre varchar (30) not null,
	contacto varchar (11) not null,
	total double
);

create table Productos_Proveedor(
	proveedorId int,
	productoId int,
	primary key (proveedorId, productoId),
	foreign key (proveedorId) REFERENCES Proveedor(proveedorId),
	foreign Key (productoId) REFERENCES Productos(productoId)
);

show TABLES;


