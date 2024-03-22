--connect db

\c tinyedu

--tao bang va drop truoc do

--neu co khoa phu thuoc vao bang thi hem tu khoa "cascade" vao sau lenh drop table bang do

drop table if exists student cascade;

create table student(
	student_id char(10) not null,
	first_name varchar(20),
	last_name varchar(20),
	dob date,
	gender char(1),
	clazz_id char(6),
	-- primary key (student_id)
	constraint pk_student primary key (student_id)
);

drop table if exists clazz cascade;

create table clazz(
	clazz_id char(6) not null,
	name varchar(30),
	lecturer_id char(10),
	monitor_id char(10),
	constraint pk_clazz primary key (clazz_id)
);

drop table if exists lecturer cascade;

create table lecturer(
	lecturer_id char(10) not null,
	first_name varchar(20),
	last_name varchar(20),
	dob date,
	gender char(1),
	email varchar(40),
	constraint pk_lecturer primary key (lecturer_id)
);

alter table student add
constraint fk_student2clazz foreign key (clazz_id)
references clazz(clazz_id);

alter table clazz add
constraint fk_clazz2student foreign key (monitor_id)
references student(student_id);

alter table clazz add
constraint fk_clazz2lecturer foreign key (lecturer_id)
references lecturer(lecturer_id);
