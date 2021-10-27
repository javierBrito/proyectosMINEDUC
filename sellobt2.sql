/*==============================================================*/
/* DBMS name:      ORACLE Version 10gR2                         */
/* Created on:     20/10/2021 12:22:57                          */
/*==============================================================*/


alter table GIEE_SBT_FORMALIZACION
   drop constraint FK_GIEE_SBT_REFERENCE_GIEE_SBT;

alter table GIEE_SBT_SECTOR_EMPRESA
   drop constraint FK_GIEE_SBT_REFERENCE_GIEE_SBT;

alter table GIEE_SBT_TIPO_FORMALIZACION
   drop constraint FK_GIEE_SBT_REFERENCE_GIEE_SBT;

drop table GIEE_SBT_EMPRESA cascade constraints;

drop table GIEE_SBT_FORMALIZACION cascade constraints;

drop table GIEE_SBT_SECTOR_EMPRESA cascade constraints;

drop table GIEE_SBT_TIPO_FORMALIZACION cascade constraints;

/*==============================================================*/
/* Table: GIEE_SBT_EMPRESA                                      */
/*==============================================================*/
create table GIEE_SBT_EMPRESA  (
   EMP_CODIGO           NUMBER(10)                      not null,
   EMP_CEDULAREP        NUMBER(10)                      not null,
   EMP_NOMBREREPCOLUMN_3 VARCHAR(80)                     not null,
   EMP_NOMBREEMP        VARCHAR(80)                     not null,
   EMP_CARGOREP         VARCHAR(25)                     not null,
   EMP_CORREOREP        VARCHAR(40)                     not null,
   EMP_DIRECCIONREP     VARCHAR(100)                    not null,
   EMP_RUC              NUMBER(13)                      not null,
   EMP_TELEFONOREP      NUMBER(10)                      not null,
   SEM_CODIGO           NUMBER(13)                      not null,
   EMP_NOMBRECON        VARCHAR(24)                     not null,
   EMP_CORREOCON        VARCHAR(40)                     not null,
   EMP_CARGOCON         VARCHAR(25)                     not null,
   EMP_DIRECCIONCON     VARCHAR(100)                    not null,
   EMP_CELULARCON       NUMBER(10)                      not null,
   constraint PK_GIEE_SBT_EMPRESA primary key (EMP_CODIGO)
);

/*==============================================================*/
/* Table: GIEE_SBT_FORMALIZACION                                */
/*==============================================================*/
create table GIEE_SBT_FORMALIZACION  (
   FOR_CODIGO           NUMBER(10)                      not null,
   FOR_DESCRIPCION      VARCHAR(80)                     not null,
   FOR_FECHA            DATE                            not null,
   FOREMP_COD           NUMBER(10)                      not null,
   FORTIP_COD           NUMBER(10)                      not null,
   constraint PK_GIEE_SBT_FORMALIZACION primary key (FOR_CODIGO)
);

/*==============================================================*/
/* Table: GIEE_SBT_SECTOR_EMPRESA                               */
/*==============================================================*/
create table GIEE_SBT_SECTOR_EMPRESA  (
   SEM_CODIGO           NUMBER(10)                      not null,
   SEM_NOMBRE           VARCHAR(200)                     not null,
   constraint PK_GIEE_SBT_SECTOR_EMPRESA primary key (SEM_CODIGO)
);

/*==============================================================*/
/* Insert Table: GIEE_SBT_SECTOR_EMPRESA                               */
/*==============================================================*/
insert into giee_sbt_sector_empresa values (1, 'AGRICULTURA - GANADERÍA - SILVICULTURA Y PESCA');
insert into giee_sbt_sector_empresa values (2, 'EXPLOTACIÓN DE MINAS Y CANTERAS');
insert into giee_sbt_sector_empresa values (3, 'INDUSTRIAS MANUFACTURERAS');
insert into giee_sbt_sector_empresa values (4, 'SUMINISTRO DE ELECTRICIDAD - GAS - VAPOR Y AIRE ACONDICIONADO');
insert into giee_sbt_sector_empresa values (5, 'DISTRIBUCIÓN DE AGUA - ALCANTARILLADO - GESTIÓN DE DESECHOS Y ACTIVIDADES DE SANEAMIENTO');
insert into giee_sbt_sector_empresa values (6, 'CONSTRUCCIÓN');
insert into giee_sbt_sector_empresa values (7, 'COMERCIO AL POR MAYOR Y AL POR MENOR');
insert into giee_sbt_sector_empresa values (8, 'TRANSPORTE Y ALMACENAMIENTO');
insert into giee_sbt_sector_empresa values (9, 'ACTIVIDADES DE ALOJAMIENTO Y DE SERVICIO DE COMIDAS');
insert into giee_sbt_sector_empresa values (10, 'INFORMACIÓN Y COMUNICACIÓN');
insert into giee_sbt_sector_empresa values (11, 'FINANCIERO Y DE SEGUROS');
insert into giee_sbt_sector_empresa values (12, ' INMOBILIARIO');
insert into giee_sbt_sector_empresa values (13, 'ACTIVIDADES PROFESIONALES - CIENTÍFICAS Y TÉCNICAS');
insert into giee_sbt_sector_empresa values (14, 'ACTIVIDADES DE SERVICIOS ADMINISTRATIVOS Y DE APOYO');
insert into giee_sbt_sector_empresa values (15, 'ADMINISTRACIÓN PÚBLICA Y DEFENSA - PLANES DE SEGURIDAD SOCIAL DE AFILIACIÓN OBLIGATORIA');
insert into giee_sbt_sector_empresa values (16, 'ENSEÑANZA');
insert into giee_sbt_sector_empresa values (17, 'ATENCIÓN DE LA SALUD HUMANA Y DE ASISTENCIA SOCIAL');
insert into giee_sbt_sector_empresa values (18, 'ARTES - ENTRETENIMIENTO Y RECREACIÓN');
insert into giee_sbt_sector_empresa values (19, 'OTRAS ACTIVIDADES DE SERVICIOS');
insert into giee_sbt_sector_empresa values (20, 'ACTIVIDADES DE LOS HOGARES COMO EMPLEADORES - ACTIVIDADES NO DIFERENCIADAS DE LOS HOGARES COMO PRODUCTORES DE BIENES Y SERVICIOS PARA USO PROPIO');
insert into giee_sbt_sector_empresa values (21, 'ORGANIZACIONES Y ÓRGANOS EXTRATERRITORIALES');



/*==============================================================*/
/* Table: GIEE_SBT_TIPO_FORMALIZACION                           */
/*==============================================================*/
create table GIEE_SBT_TIPO_FORMALIZACION  (
   TIP_CODIGO           NUMBER(10)                      not null,
   TIP_DESCRIPCION      VARCHAR(40)                     not null,
   TIP_FECHAEXPEDICION  DATE                            not null
);

alter table GIEE_SBT_FORMALIZACION
   add constraint FK_GIEE_SBT_REFERENCE_GIEE_SBT foreign key (FOREMP_COD)
      references GIEE_SBT_EMPRESA (EMP_CODIGO);

alter table GIEE_SBT_SECTOR_EMPRESA
   add constraint FK_GIEE_SBT_REFERENCE_GIEE_SBT foreign key ()
      references GIEE_SBT_EMPRESA (EMP_CODIGO);

alter table GIEE_SBT_TIPO_FORMALIZACION
   add constraint FK_GIEE_SBT_REFERENCE_GIEE_SBT foreign key ()
      references GIEE_SBT_FORMALIZACION (FOR_CODIGO);

