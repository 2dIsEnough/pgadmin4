--tao db

create database tinyedu;

--tao admin

create role admin_tinyedu with createrole login password 'admin_tinyedu';

--trao quyen tren db tinyedu

grant all on database tinyedu to admin_tinyedu;

-- cho admin_tinyedu thanh owner cua db de co the create tren schema public

alter database tinyedu owner to admin_tinyedu;