CREATE TABLE CLASE (
  id int,
  nombre varchar(30),
  PRIMARY KEY (id)
);

CREATE TABLE ESTADO (
  id int,
  nombre varchar(30),
  PRIMARY KEY (id)
);

CREATE TABLE MARCA (
  id int,
  nombre varchar(30),
  PRIMARY KEY (id)
);

CREATE TABLE EQUIPO (
  id int,
  nombre varchar(30),
  PRIMARY KEY (id)
);

CREATE TABLE TIPO_ITEM (
  id int,
  nombre varchar(30),
  PRIMARY KEY (id)
);


CREATE TABLE USUARIO (
  id int,
  usuario varchar(30),
  contraseña varchar(30),
  PRIMARY KEY (id)
);

CREATE TABLE PATRON (
  codigo int,
  item varchar(30),
  marca varchar(30),
  clase varchar(30),
  estado varchar(30),
  equipo varchar(30),
  valor_magnitud varchar(30),
  lote int,
  fecha_activacion date,
  fecha_vencimiento date,
  cantidad int,
  PRIMARY KEY (codigo)
);

alter table PATRON add constraint fk1 FOREIGN KEY item REFERENCES TIPO_ITEM (nombre);
alter table PATRON add constraint fk2 FOREIGN KEY marca REFERENCES MARCA (nombre);
alter table PATRON add constraint fk3 FOREIGN KEY clase REFERENCES CLASE (nombre);
alter table PATRON add constraint fk4 FOREIGN KEY estado REFERENCES ESTADO (nombre);
alter table PATRON add constraint fk5 FOREIGN KEY equipo REFERENCES EQUIPO (nombre);


CREATE TABLE BITACORA (
  id int,
  id_usuario int,
  id_patron int,
  transaccion varchar(30),
  PRIMARY KEY (id)
);
alter table PATRON add constraint fk_bitacora1 FOREIGN KEY id_usuario REFERENCES USUARIO (id);
alter table PATRON add constraint fk_bitacora2 FOREIGN KEY id_patron REFERENCES PATRON (codigo);