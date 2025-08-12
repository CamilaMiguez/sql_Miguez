CREATE DATABASE IF NOT EXISTS nomina_sanare;
USE nomina_sanare;

CREATE TABLE IF NOT EXISTS departamento(
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre_departamento VARCHAR(20) NOT NULL
    );

    CREATE TABLE puesto (
    id_puesto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_puesto VARCHAR(20) NOT NULL,
    descripcion TEXT
);

CREATE TABLE empleado (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    dni CHAR(9) NOT NULL UNIQUE,
    email VARCHAR(100),
    nacionalidad VARCHAR(100) DEFAULT "Argentina",
    id_puesto INT,
    id_departamento INT,
    FOREIGN KEY (id_puesto) REFERENCES puesto(id_puesto),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);

