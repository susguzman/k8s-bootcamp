CREATE TABLE USUARIO (
    USUARIO text primary key,
    CORREO text not null,
    ADD_FECHA date not null default CURRENT_TIMESTAMP
);
CREATE TABLE CUENTA_TIPO (
    CUENTA_TIPO SERIAL primary key,
    DESCRIPCION text not null unique,
    ADD_FECHA date not null default CURRENT_TIMESTAMP
);
CREATE TABLE MONEDA (
    MONEDA SERIAL primary key, 
    DESCRIPCION text not null unique,
    ADD_FECHA date not null default CURRENT_TIMESTAMP
);
CREATE TABLE CUENTA (
    CUENTA SERIAL primary key,
    DESCRIPCION text not null,
    CUENTA_TIPO integer not null references CUENTA_TIPO(CUENTA_TIPO),
    MONEDA integer not null references MONEDA(MONEDA),
    USUARIO text not null references USUARIO(USUARIO),
    ADD_FECHA date not null default CURRENT_TIMESTAMP
);
INSERT INTO MONEDA(DESCRIPCION) 
VALUES ('GTQ');
INSERT INTO MONEDA(DESCRIPCION) 
VALUES ('USD');
INSERT INTO CUENTA_TIPO(DESCRIPCION) 
VALUES ('Efectivo');
INSERT INTO CUENTA_TIPO(DESCRIPCION) 
VALUES ('Corriente');
INSERT INTO CUENTA_TIPO(DESCRIPCION) 
VALUES ('Ahorro');