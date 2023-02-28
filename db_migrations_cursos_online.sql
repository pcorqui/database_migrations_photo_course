
CREATE TABLE IF NOT EXISTS  roles(
    Id serial NOT NULL,
    nombre varchar(100),
    descripcion varchar (250),
    fecha_creacion date default CURRENT_DATE,
    fecha_actualizacion date default CURRENT_DATE,
     CONSTRAINT PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS  usuarios(
    id serial NOT NULL,
    id_rol integer,
    nombre varchar(200),
    apellido varchar(200),
    direccion varchar(200),
    email varchar(100) unique not null,
    celular varchar(20),
    fecha_creacion date default CURRENT_DATE,
    fecha_actualizacion date default CURRENT_DATE,
    CONSTRAINT PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS  compras(
    id serial NOT NULL,
    id_usuario Integer,
    id_curso integer,
    fecha date,
    forma_pago varchar,
    fecha_creacion date default CURRENT_DATE,
    fecha_actualizacion date default CURRENT_DATE,
    CONSTRAINT PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS  curso(
    id serial,
    nombre varchar(200),
    descripcion varchar(500),
    precio decimal,
    CONSTRAINT PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS  area(
    id serial not null,
    nombre varchar(200),
    descripcion varchar(500),
    CONSTRAINT PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS  tema(
    id serial not null,
    nombre varchar(200),
    descripcion varchar(200),
    CONSTRAINT PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS  respuesta(
    id serial not null,
    id_usuario integer,
    descripcion varchar(500),
    fecha date,
    CONSTRAINT PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS  pregunta(
    id serial not null,
    id_usuario integer,
    descripcion varchar(500),
    fecha date,
    id_foro integer,
    CONSTRAINT PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS  foro(
    id serial not null,
    nombre varchar(200),
    CONSTRAINT PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS  video(
    id serial not null,
    nombre varchar(200),
    descripcion varchar(200),
    CONSTRAINT PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS  impartir(
    id serial not null,
    id_curso integer,
    id_profesor integer,
    CONSTRAINT PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS  profesor(
    id serial not null,
    nombre varchar(200),
    CONSTRAINT PRIMARY KEY (id)
)