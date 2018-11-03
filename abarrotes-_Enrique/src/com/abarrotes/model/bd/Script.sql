CREATE DATABASE bd_abarrotes;
USE bd_abarrotes;

CREATE TABLE marca(
	id INT AUTO_INCREMENT,
	nombre VARCHAR (100),
	
	PRIMARY KEY (id),
	UNIQUE (nombre)
);

INSERT INTO marca VALUES (NULL, 'Soprole');
INSERT INTO marca VALUES (NULL, 'Marco Polo');
INSERT INTO marca VALUES (NULL, 'Danone');


CREATE TABLE vendedor(
	id INT AUTO_INCREMENT,
	nombre VARCHAR (100),
	
	PRIMARY KEY (id),
	UNIQUE (nombre)
);

INSERT INTO vendedor VALUES (NULL, 'Juan Carlos');
INSERT INTO vendedor VALUES (NULL, 'Camila Soto');

CREATE TABLE categoria (
	id INT AUTO_INCREMENT,
	nombre VARCHAR (100),
	
	PRIMARY KEY (id),
	UNIQUE (nombre)
);

INSERT INTO categoria VALUES (NULL, 'Productos enlatados')
INSERT INTO categoria VALUES (NULL, 'Lacteos')
INSERT INTO categoria VALUES (NULL, 'Frutas y verduras')
INSERT INTO categoria VALUES (NULL, 'Bebidas')
INSERT INTO categoria VALUES (NULL, 'Bebidas Alcohòlicas')
INSERT INTO categoria VALUES (NULL, 'Alimentos preparados')
INSERT INTO categoria VALUES (NULL, 'Automedicacion')
INSERT INTO categoria VALUES (NULL, 'Higiene Personal')
INSERT INTO categoria VALUES (NULL, 'Uso domesticos')
INSERT INTO categoria VALUES (NULL, '')

CREATE TABLE proveedor(
	id INT AUTO_INCREMENT,
	nombre VARCHAR (100),
	telefono VARCHAR (20),
	direccion VARCHAR (200),
	email VARCHAR (20),
	
	PRIMARY KEY (id)
);

INSERT INTO proveedor VALUES (NULL, 'cocacola', '900199202', 'Circunvalación Nte 41, Rancagua, Región del Libertador Gral. Bernardo O’Higgins', '', 1);
INSERT INTO proveedor VALUES (NULL, 'Soprole', '800220011', 'Avenida Las Torres #90, Bodega D , Rancagua', 'soprole@soprole.cl', 1);

CREATE TABLE estado_cliente (
	id INT AUTO_INCREMENT,
	nombre VARCHAR (100),
	total_deuda VARCHAR (100)
);


CREATE TABLE producto(
	id INT AUTO_INCREMENT,
	nombre VARCHAR (100),
	stock INT,
	precio INT,
	fk_proveedor INT,
	fk_marca INT,
	
	PRIMARY KEY (id)
	FOREIGN KEY (fk_proveedor) REFERENCES proveedor(id),
	FOREIGN KEY (fk_marca) REFERENCES marca(id)
);

CREATE TABLE venta (
	id INT AUTO_INCREMENT,
	fecha DATE,
	total INT,
	fk_vendedor INT,
	
	PRIMARY KEY (id),
	FOREIGN KEY (fk_vendedor) REFERENCES vendedor(id)
	
);

/*
Continuar con sql
*/




