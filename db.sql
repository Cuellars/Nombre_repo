drop schema if exists `test_php`;
create schema if not exists `test_php` default character set utf8 collate utf8_spanish_ci;
use  `test_php`;

CREATE TABLE `persona`(
`numero` int(11) not null,
`nombre_usuario` text not null,
`carrera`  text not null,
`no_cuenta` int(10) not null,
`direccion` text not null,
`telefono` varchar(10) not null,
`email` text not null,
`password` varchar (8) not null,
`fecha_registro`  datetime not null default current_timestamp,
`permisos` int(11) not null default  '2'
 ) engine=Innodb default charset=utf8;

alter table `test_php`.`persona`
    change column `numero` `numero` int (10) not null auto_increment,
    add primary key (`numero`);
commit;

insert into `persona`(`nombre_usuario`, `carrera`,`no_cuenta`,`direccion`,`telefono`,`email`,`password`,`fecha_registro`,`permisos`) values

('Lorena','ico','3182179221','Cuellar Home 18','5587596263','lorecuellar21@gmail.com','182800','2022-04-18 18:08:00',2),
('Alex','Economia','3182179221','Salinas Home 8','5587596263','cs@gmail.com','123456','2023-03-30 10:35:00',2),
('Isaac','Arquitectura','3182179221','Salinas Home 8','5587596263','cs@gmail.com','123456','2023-03-30 10:35:00',2),
('Abraham','Arquitectura','3182179221','Salinas Home 8','5587596263','cs@gmail.com','123456','2023-03-30 10:35:00',2),
('Alan','Mecanica','3182179221','Salinas Home 8','5587596263','cs@gmail.com','123456','2023-03-30 10:35:00',2),
('Casandra','Economia','3182179221','Salinas Home 8','5587596263','cs@gmail.com','123456','2023-03-30 10:35:00',2),
('Samanta','Economia','3182179221','Salinas Home 8','5587596263','cs@gmail.com','123456','2023-03-30 10:35:00',2),
('Kevin','Pedagogía','3182179221','Salinas Home 8','5587596263','cs@gmail.com','123456','2023-03-30 10:35:00',2),
('Lian','ICO','3182179221','Salinas Home 8','5587596263','cs@gmail.com','123456','2023-03-30 10:35:00',2),
('Cedric','Derecho','3182179221','Salinas Home 8','5587596263','cs@gmail.com','123456','2023-03-30 10:35:00',2),
('Dulce','ICO','3182179221','Salinas Home 8','5587596263','cs@gmail.com','123456','2023-03-30 10:35:00',2);





