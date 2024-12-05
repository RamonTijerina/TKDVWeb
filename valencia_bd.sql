create table Branch(
branch_id int identity primary key, --ID de la sucursal
branch_name varchar(75),			--Nombre de la sucursal
branch_location varchar(100),		--Ubicacion de la sucursal
branch_phone varchar(12),			--Telefono asignado (puede ser el del encargado)
created_date datetime				--Fecha de creacion del registro
)

create table Users(
user_id int identity primary key,	--ID del usuario
user_first_name varchar(100),		--Nombres del usuario
user_last_name varchar(100),		--Apellidos del usuario
user_birthday date,					--Cumpleaños del usuario
user_phone varchar(12),				--Telefono del usuario
user_user varchar(20),				--Usuario para acceder
user_password varchar(20),			--Contraseña para acceder
user_email varchar(100),			--Correo electronico del usuario
user_type varchar(5),				--Tipo de usuario (Auxiliar, Encargado, Admin)
branch_id int,						--Sucursal a la que pertenece
created_date datetime,				--Fecha de creacion del registro
foreign key (branch_id) references Branch(branch_id)
)

create table Student(
student_id int identity primary key,	--ID del studiante
student_first_name varchar(100),		--Nombres
student_last_name varchar(100),			--Apellidos
student_curp varchar(20),				--CURP
student_birthday date,					--Cumpleaños
student_mother varchar(200),			--Nombre madre
student_father varchar(200),			--Nombre padre
student_phone_1 varchar(12),			--Telefono 1
student_phone_2 varchar(12),			--Telefono 2
student_email_1 varchar(100),			--Correo 1
student_email_2 varchar(100),			--Correo 2
student_comments varchar(500),			--Comentarios adicionales
student_registration_date date,			--Fecha en que se inscribio al estudiante
student_registration_payment int,		--Pago de inscripcion
student_monthly_payment int,			--Mensualidad correspondiente
student_day_payment varchar(2),			--Dia que corresponde el pago
student_height float,					--Estatura
student_belt varchar(50),				--Cinta
created_date datetime,					--Fechade creacion del registro
branch_id int,							--Sucursal que corresponde
foreign key (branch_id) references Branch(branch_id)
)

create table Payment(
payment_id int identity primary key,	--ID del pago
payment_folio varchar(20),				--Folio del vaucher entregado
payment_concept varchar(100),			--Concepto de pago
payment_date date,						--Fecha de pago
payment_amount int,						--Monto de pago
payment_method varchar(100),			--Metodo de pago
payment_comments varchar(500),			--Comentarios adicionales con respecto al pago
branch_id int,							--Sucursal correspondiente
student_id int,							--Estudiante correspondiente
foreign key (branch_id) references Branch(branch_id),
foreign key (student_id) references Student(student_id)
)