CREATE DATABASE GreenFlip;
USE GreenFlip;

CREATE TABLE Voluntarios (
    id_voluntario INT PRIMARY KEY AUTO_INCREMENT,      -- Identificador único del voluntario
    nombre VARCHAR(100) NOT NULL,                      -- Nombre del voluntario
    apellido VARCHAR(100) NOT NULL,                    -- Apellido del voluntario
    correo_electronico VARCHAR(100) NOT NULL UNIQUE,   -- Correo electrónico
    telefono VARCHAR(15),                              -- Número de teléfono
    direccion VARCHAR(255),                            -- Dirección del voluntario
    fecha_registro DATE,                               -- Fecha en que se registra como voluntario
    disponibilidad VARCHAR(50),                        -- Disponibilidad (ej. fines de semana, tiempo completo)
    tipo_de_voluntario VARCHAR(50)                     -- Tipo de voluntario (ej. recolector, administrativo, etc.)
);

CREATE TABLE Solicitudes_Servicio (
    id_solicitud INT PRIMARY KEY AUTO_INCREMENT,       -- Identificador único de la solicitud
    nombre_cliente VARCHAR(100) NOT NULL,              -- Nombre de la persona o empresa que solicita el servicio
    direccion_recoleccion VARCHAR(255) NOT NULL,       -- Dirección donde se recogerán los plásticos
    telefono_contacto VARCHAR(15),                     -- Teléfono de contacto del cliente
    correo_contacto VARCHAR(100),                      -- Correo de contacto del cliente
    fecha_solicitud DATE,                              -- Fecha en que se hace la solicitud
    descripcion_material TEXT,                         -- Descripción del material a reciclar
    cantidad_kg DOUBLE                                 -- Cantidad de material en kilogramos
);