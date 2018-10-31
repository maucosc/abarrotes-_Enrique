CREATE DATABASE bd_abarrotes;
USE bdCREATE DATABASE bd_abarrotes;
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

CREATE TABLE pais(
	id INT AUTO_INCREMENT,
	nombre VARCHAR (100),
	
	PRIMARY KEY (id),
	UNIQUE (nombre)
);

INSERT INTO pais VALUES (NULL, 'Chile');
INSERT INTO pais VALUES (NULL, 'Peru');
INSERT INTO pais VALUES (NULL, 'Argentina');

CREATE TABLE vendedor(
	id INT AUTO_INCREMENT,
	nombre VARCHAR (100),
	
	PRIMARY KEY (id),
	UNIQUE (nombre)
);

INSERT INTO vendedor VALUES (NULL, 'Juan Carlos');
INSERT INTO vendedor VALUES (NULL, 'Camila Soto');

CREATE TABLE proveedor(
	id INT AUTO_INCREMENT,
	nombre VARCHAR (100),
	telefono VARCHAR (20),
	direccion VARCHAR (200),
	email VARCHAR (20),
	fk_pais INT,
	
	PRIMARY KEY (id)
);

INSERT INTO proveedor VALUES (NULL, 'cocacola', '900199202', 'Circunvalación Nte 41, Rancagua, Región del Libertador Gral. Bernardo O’Higgins', '', 1);
INSERT INTO proveedor VALUES (NULL, 'Soprole', '800220011', 'Avenida Las Torres #90, Bodega D , Rancagua', 'soprole@soprole.cl', 1);


CREATE TABLE producto(
	id INT AUTO_INCREMENT,
	nombre VARCHAR (100),
	stock INT,
	precio INT,
	fk_producto INT,
	fk_marca INT,
	
	PRIMARY KEY (id)
	FOREIGN KEY (fk_producto) REFERENCES producto(id),
	FOREIGN KEY (fk_marca) REFERENCES marca(id)
);

/*
Continuar con sql
*/



