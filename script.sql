create table migrations
(
  id int unsigned auto_increment
    primary key,
  migration varchar(255) not null,
  batch     int          not null
);


create table modules
(
  id          int unsigned auto_increment
    primary key,
  page_id     int          not null,
  title       varchar(255) not null,
  description varchar(255) not null,
  name        varchar(255) not null,
  created_at  timestamp    null,
  updated_at  timestamp    null
);


create table pages
(
  id          int unsigned auto_increment
    primary key,
  title       varchar(255) not null,
  keywords    varchar(255) not null,
  description varchar(255) not null,
  slug        varchar(255) not null,
  name        varchar(255) not null,
  created_at  timestamp    null,
  updated_at  timestamp    null
);


create table password_resets
(
  email      varchar(255) not null,
  token      varchar(255) not null,
  created_at timestamp    null
);


create index password_resets_email_index
  on password_resets (email);

create table settings
(
  `key` varchar(255) not null,
  value varchar(255) null
);


create table users
(
  id             int unsigned auto_increment
    primary key,
  name           varchar(255) not null,
  email          varchar(255) not null,
  password       varchar(255) not null,
  remember_token varchar(100) null,
  created_at     timestamp    null,
  updated_at     timestamp    null,
  constraint users_email_unique
  unique (email)
);



