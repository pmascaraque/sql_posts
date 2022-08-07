create table users (
    id serial primary key,
    first_name varchar(255) not null,
    last_name text,
    age int,
    email text unique not null
);

drop table users;

insert into users
(first_name, last_name, age, email)
values
('bob', null, null, 'bob@bob6.com');

select * from users;

alter table users drop column age;
alter table users add column age int;

select * from users where age is not null;

update users
set age = age - 10
where age < 25;

select * from users;

delete from users
where last_name is null;
--  1 to m
-- 1 to many
create table posts(
    id serial primary key,
    title text not null,
    body text default '...',
    "creatorId" int references users(id) not null
);