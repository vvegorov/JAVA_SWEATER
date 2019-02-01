create table hibernate_sequence (
next_val bigint) engine=MyISAM;
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );

create table message (
id bigint NOT NULL,
filename varchar(255),
tag varchar(255),
text varchar(255) NOT NULL,
user_id bigint,
primary key (id)) engine=MyISAM;

create table user_role (
user_id bigint NOT NULL,
roles varchar(255)) engine=MyISAM;

create table usr (
id bigint NOT NULL,
activation_code varchar(255),
active bit NOT NULL,
email varchar(255),
password varchar(255) NOT NULL,
username varchar(255) NOT NULL,
primary key (id)) engine=MyISAM;

alter table message add constraint message_user_fk foreign key (user_id) references usr (id);
alter table user_role add constraint user_role_user_fk foreign key (user_id) references usr (id);