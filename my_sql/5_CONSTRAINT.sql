-- ################################################# VALORES ÚNICOS ####################################################
-- VALORES ÚNICOS FORMA 1
CREATE TABLE IF NOT EXISTS tabla1(
    id_tabla1 INT UNSIGNED PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(25) UNIQUE, --FORMA 1
    apellido VARCHAR(30) NOT NULL,
    fecha DATE NOT NULL,
    genero CHAR(1) NOT NULL,
    pais VARCHAR(20) NOT NULL,
    fecha_creacion DATETIME DEFAULT NOW()
);
-- VALORES ÚNICOS FORMA 2
CREATE TABLE IF NOT EXISTS tabla1(
    id_tabla1 INT UNSIGNED PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    fecha DATE NOT NULL,
    genero CHAR(1) NOT NULL,
    pais VARCHAR(20) NOT NULL,
    fecha_creacion DATETIME DEFAULT NOW()
    CONSTRAINT UNIQUE (nombre) --FORMA 2
);
-- ################################################# VALORES NULOS ####################################################
CREATE TABLE IF NOT EXISTS tabla1(
    id_tabla1 INT, 
    nombre VARCHAR(25) UNIQUE, 
    apellido VARCHAR(30) NOT NULL, -- NO NULO
    fecha DATE NOT NULL,
    genero CHAR(1) NOT NULL,
    pais VARCHAR(20) NOT NULL,
    fecha_creacion DATETIME DEFAULT NOW()
);
-- ################################################# VALORES DEFAULT ####################################################
CREATE TABLE IF NOT EXISTS tabla1 (
    id_tabla1 INT NOT NULL PRIMARY KEY, 
    nombre VARCHAR(25) UNIQUE, 
    apellido VARCHAR(30) NOT NULL,
    fecha DATE NOT NULL,
    genero CHAR(1) NOT NULL,
    pais VARCHAR(20) DEFAULT 'PERU',  -- DEFAULT
    fecha_creacion DATETIME DEFAULT NOW() -- DEFAULT
);
-- ################################################# NÚMEROS POSITIVOS ####################################################
CREATE TABLE IF NOT EXISTS tabla1 (
    id_tabla1 INT UNSIGNED PRIMARY KEY AUTO_INCREMENT, -- UNSIGNED 
    nombre VARCHAR(25) UNIQUE,  
    apellido VARCHAR(30) NOT NULL,
    fecha DATE NOT NULL,
    genero CHAR(1) NOT NULL,
    pais VARCHAR(20) NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP  
);
-- ################################################# TIPO DE DATO "ENUN" ####################################################
CREATE TABLE IF NOT EXISTS tabla1 (
    id_tabla1 INT UNSIGNED PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(25) UNIQUE,  
    apellido VARCHAR(30) NOT NULL,
    fecha DATE NOT NULL,
    genero ENUM('M', 'F'),  -- LISTA ÚNICA (CUALQUIERA DE LA LISTA)
    pais VARCHAR(20) NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP  
);
-- ################################################# LLAVES PRIMARIAS ####################################################
CREATE TABLE IF NOT EXISTS tabla1 (
    id_tabla1 INT UNSIGNED PRIMARY KEY, -- LLAVE PRIMARIA (SIN AUTOINCREMENTAR)
    nombre VARCHAR(25) UNIQUE,  
    apellido VARCHAR(30) NOT NULL,
    fecha DATE NOT NULL,
    genero ENUM('M', 'F'),  
    pais VARCHAR(20) NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP  
);
CREATE TABLE IF NOT EXISTS tabla1 (
    id_tabla1 INT UNSIGNED PRIMARY KEY AUTO_INCREMENT, -- LLAVE PRIMARIA (CON AUTOINCREMENTO)
    nombre VARCHAR(25) UNIQUE,  
    apellido VARCHAR(30) NOT NULL,
    fecha DATE NOT NULL,
    genero ENUM('M', 'F'),  
    pais VARCHAR(20) NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP
);
-- ################################################# LLAVES FORANEAS ####################################################
CREATE TABLE IF NOT EXISTS tabla2 (
    id_tabla2 INT UNSIGNED PRIMARY KEY AUTO_INCREMENT, 
    id_tabla1 INT UNSIGNED NOT NULL,
    nombre VARCHAR(25) UNIQUE,  
    apellido VARCHAR(30) NOT NULL,
    fecha DATE NOT NULL,
    genero ENUM('M', 'F'),  
    pais VARCHAR(20) NOT NULL,
    fecha_creacion2 DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_tabla1) REFERENCES tabla1(id_tabla1) -- LLAVE FORANEA
);
