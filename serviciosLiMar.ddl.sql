CREATE TABLE ciudad(
    ciudad_id INT PRIMARY KEY,
    nombre_ciudad VARCHAR(100),
    codigo_postal VARCHAR(50)
);


CREATE TABLE usuario(
    usuario_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    tipo_usuario VARCHAR(100),
    condicion_especial TEXT,
    ciudad_id INT,
    FOREIGN KEY (ciudad_id) REFERENCES ciudad (ciudad_id)
);


CREATE TABLE empleado(
    empleado_id INT PRIMARY KEY,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id)
);

CREATE TABLE cargo(
    cargo_id INT PRIMARY KEY,
    nombre_cargo VARCHAR(100),
    tarea VARCHAR(100),
    empleado_id INT,
    FOREIGN KEY (empleado_id) REFERENCES empleado (empleado_id)
);

CREATE TABLE departamento(
    departamento_id INT PRIMARY KEY,
    nombre_departamento VARCHAR(100),
    empleado_id INT,
    FOREIGN KEY (empleado_id) REFERENCES empleado (empleado_id)
);

CREATE TABLE servicio(
    servicio_id INT PRIMARY KEY,
    nombre_servicio VARCHAR(100),
    descripcion TEXT,
    estado VARCHAR(50)
);

CREATE TABLE medio(
    medio_id INT PRIMARY KEY,
    tipo TEXT,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id)
);

CREATE TABLE turno(
    turno_id INT PRIMARY KEY,
    usuario_id INT,
    empleado_id INT,
    servicio_id INT,
    estado TEXT,
    fecha DATE,
    hora_inicio TIME,
    hora_fin TIME,
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY (empleado_id) REFERENCES empleado (empleado_id),
    FOREIGN KEY (servicio_id) REFERENCES servicio (servicio_id)
);

CREATE TABLE notificacion(
    notificacion_id INT PRIMARY KEY,
    mensaje TEXT,
    fecha_envio TIMESTAMP,
    estado VARCHAR(100),
    usuario_id INT,
    medio_id INT,
    turno_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY (medio_id) REFERENCES medio (medio_id),
    FOREIGN KEY (turno_id) REFERENCES turno (turno_id)
);
