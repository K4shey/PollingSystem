DROP TABLE IF EXISTS user_role;
DROP TABLE IF EXISTS dish;
DROP TABLE IF EXISTS vote;
DROP TABLE IF EXISTS restaurant;
DROP TABLE IF EXISTS users;


CREATE TABLE users
(
    id       integer not null
        constraint user_pkey
            primary key,
    name     varchar not null,
    email    varchar not null,
    password varchar not null
);

CREATE TABLE user_role
(
    user_id integer not null
        constraint user_role_user_id_fk
            references users,
    role    varchar not null
);

CREATE UNIQUE INDEX user_role_user_id_role_uindex
    ON user_role (user_id, role);


CREATE TABLE restaurant
(
    id   integer not null
        primary key,
    name varchar not null
);

CREATE TABLE dish
(
    restaurant_id integer   not null
        constraint dish_restaurant_id_fk
            references restaurant,
    date          timestamp not null,
    name          varchar   not null,
    price         integer   not null
);

CREATE UNIQUE INDEX dish_restaurant_id_date_name_uindex
    ON dish (restaurant_id, date, name);

create table vote
(
    date_time     timestamp not null,
    user_id       integer   not null
        constraint vote_users_null_fk
            references users,
    restaurant_id integer   not null
        constraint vote_restaurant_null_fk
            references restaurant
);