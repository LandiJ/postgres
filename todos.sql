createdb todolist
psql todolist


create table todos (id serial primary key,
title varchar(100) not null, details text null, priority integer  not null default'1', created_at timestamp  not null, completed_at timestamp null);

INSERT INTO todos (title, details, priority, created_at) VALUES ('laundry', 'whites', 1, '2017-06-28 10:20:00');

INSERT INTO todos (title, details, priority, created_at) VALUES ('car', 'wash', 1, '2017-06-29 11:20:00');

INSERT INTO todos (title, details, priority, created_at) VALUES ('feed dog', 'food', 3, '2017-06-28 10:14:11');

INSERT INTO todos (title, details, priority, created_at) VALUES ('dinner', 'cook', 2, '2017-06-28 4:14:34');

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('dinner', 'cook', 2, '2017-06-28 4:14:34', '2017-06-28 17:14:34');

SELECT title FROM todos WHERE completed_at = NULL;
SELECT title FROM todos WHERE priority >1;

UPDATE todos SET completed_at = '2017-06-28 4:14:34' WHERE completed_at = NULL;

DELETE FROM todos WHERE completed_at <> NULL;