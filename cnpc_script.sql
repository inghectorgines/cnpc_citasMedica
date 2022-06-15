CREATE DATABASE IF NOT EXISTS cnpc_citasMedicas;
USE cnpc_citasMedicas;

CREATE TABLE doctores(
    id int(25) auto_increment not null,
    nombre varchar(100),
    apellidos varchar(255),
    instituto varchar(255),
    consultorio varchar(255) not null,
    email varchar(255) not null,
    password varchar(255) not null,
    fecha date not null,
    CONSTRAINT pk_doctores PRIMARY KEY(id),
    CONSTRAINT uq_email UNIQUE(email)
)ENGINE=InnoDb;

CREATE TABLE citas(
    id int(25) auto_increment not null,
    doctor_id int(25) not null,
    titulo varchar(255) not null,
    paciente varchar(255) not null,
    fechaCita varchar(255) not null,
    fecha date not null,
    CONSTRAINT pk_notas PRIMARY KEY(id),
    CONSTRAINT fk_cita_doctor FOREIGN KEY(doctor_id) REFERENCES doctores(id)
)ENGINE=InnoDb;