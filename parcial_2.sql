create database Parcial_2
use Parcial_2

Create table DueñoMascota(
dmId int primary key identity (1,1) not null,
Num_Identidad int unique not null,
Nombre varchar(50) not null,
Apellidos varchar(50) not null,
Dirección int foreign key references Direccion(id_Direccion) not null,
);

create table Direccion(
id_Direccion int primary key identity (1,1) not null,
Direccion varchar(50) not null,
departamento int foreign key references Departamento(depId) not null,
codigoPostal int not null
);

create table Departamento (
depId int primary key identity (1,1) not null,
departamento varchar(50) not null unique,
municipio int foreign key references Municipio(munId)
);

create table Municipio(
munId int primary key identity (1,1) not null,
municipio varchar(50) not null unique
);

create table Mascota (
masId int primary key identity(1,1) not null,
niMascota varchar(5) not null,
nombre varchar(50) not null,
raza varchar (50) not null,
observaciones varchar(100) not null
);

create table tipoMascota(
tmId int primary key identity (1,1) not null,
mascotaTipo varchar(50) not null,
);

create table razaM(
razaId int primary key identity(1,1) not null,
nombreR varchar(50) not null
);

create table Ingresos(
Ingresosid int primary key identity(1,1) not null,
Motivo varchar(50) not null,
Fecha_ingreso varchar(50) not null,
Observaciones varchar(50) not null,
);


