create table subscriptions (
channel_id bigint NOT NULL references usr,
subscriber_id bigint NOT NULL references usr,
primary key (channel_id, subscriber_id)) engine=MyISAM;