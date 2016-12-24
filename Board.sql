-- Board
create table Board(
  id int auto_increment primary key,
  name varchar(32),
  Creation_date date,
  description varchar(32)
);
-- Forum
create table Forum(
    id int auto_increment primary key,
    Board_id int not null,
    Forum_name varchar(16),
    Forum_description varchar(32)
);
-- Article
create table Article(
  id int auto_increment primary key,
  Forum_id int not null,
  theme varchar(16),
  Posting_time datetime,
  viewed int,
  content varchar(32),
  UID varchar(8),
  LastReplyDate date,
  LastRepiyUID varchar(16)
);
-- Reply
create table Reply(
  id datetime auto_increment primary key,
  Article_id int not null,
  Content varchar(32),
  Title varchar(16),
  UID varchar(8),
  ReplyDate date
);
-- moderator
create table Moderator(
    Forum_id int not null,
    Forum_id int foreign key not null,
    UID_id int primary key not null,
    UID_id int foreign key not null,
    OperUID varchar(16),
    OperDate datetime
);
-- User
create table User(
  id varchar(8) auto_increment primary key,
  User-Name varchar(16),
  Pass_word int
);
-- userDesc
create table UserDesc(
  UID varchar(8) primary key not null,
  UID varchar(8) foreign key not null,
  Desci varchar(16),
  Name datetime,
  Sex varchar(4),
  Birthday date
);
--Entity7
create table Entity7(
  User_id varchar(8) primary key not null,
  User_id varchar(8) foreign key not null,
  Role_id int not foreign key null,
  Role_id int not primary key null
);
-- Role
create table Role(
  id varchar(8) auto_increment primary key,
  role_name varchar(16)
);
-- Entity9
 create table Entity9(
   authority_id varchar(8) primary key not null,
   authority_id varchar(8) foreign key not null,
   Role_id varchar(8) primary key not null,
   Role_id varchar(8) foreign key not null,
 )
-- authority
create table authority(
  id varchar auto_increment primary key,
  Right-name varchar(8)
);
