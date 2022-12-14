CREATE SCHEMA tienda_zapatillas;
USE tienda_zapatillas;
--
CREATE TABLE zapatillas (
id_zapatillas INT NOT NULL AUTO_INCREMENT,
modelo VARCHAR(45) NOT NULL,
color VARCHAR(45) NOT NULL,
PRIMARY KEY (id_zapatillas) );

CREATE TABLE clientes (
id_cliente INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(45) NOT NULL,
numero_telefono INT(9) NOT NULL,
email VARCHAR(45) NOT NULL,
direccion VARCHAR(45) NOT NULL,
ciudad VARCHAR(45),
provincia VARCHAR(45) NOT NULL,
pais VARCHAR(45) NOT NULL,
codigo_postal VARCHAR(45) NOT NULL,
PRIMARY KEY (id_cliente) );

CREATE TABLE empleados (
id_empleado INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR (45) NOT NULL,
tienda VARCHAR(45) NOT NULL,
salario INT,
fecha_incorporacion DATE NOT NULL,
PRIMARY KEY (id_empleado) );



CREATE TABLE facturas (
id_factura INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
numero_factura VARCHAR(45) NOT NULL,
fecha DATE NOT NULL,
id_zapatillas INT NOT NULL,
id_empleado INT NOT NULL,
id_cliente INT NOT NULL,
INDEX `fk_Factura_Clientes1_idx` (`id_cliente` ASC) ,
INDEX `fk_Factura_Zapatillas1_idx` (`id_zapatillas` ASC) ,
INDEX `fk_Factura_Empleados1_idx` (`id_empleado` ASC) , 
CONSTRAINT `fk_facturas_zapatillas`
FOREIGN KEY (id_zapatillas)
REFERENCES zapatillas (id_zapatillas),
CONSTRAINT `fk_facturas_empleados`
FOREIGN KEY (id_empleado)
REFERENCES empleados (id_empleado),
CONSTRAINT `fk_facturas_clientes`
FOREIGN KEY (id_cliente)
REFERENCES clientes (id_cliente) );


















