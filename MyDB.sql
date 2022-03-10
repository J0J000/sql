/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/5/12 20:49:29                           */
/*==============================================================*/


drop table if exists course;

drop table if exists sc;

drop table if exists student;

drop table if exists teacher;

/*==============================================================*/
/* Table: course                                                */
/*==============================================================*/
create table course
(
   cid                  varchar(4) not null,
   cname                varchar(10),
   semester             int not null,
   primary key (cid, semester)
);

/*==============================================================*/
/* Table: sc                                                    */
/*==============================================================*/
create table sc
(
   sid                  varchar(4) not null,
   tid                  varchar(4) not null,
   cid                  varchar(4) not null,
   semester             int not null,
   score                int not null,
   primary key (sid, tid, cid, semester, score)
);

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
create table student
(
   sid                  varchar(4) not null,
   sname                varchar(10),
   primary key (sid)
);

/*==============================================================*/
/* Table: teacher                                               */
/*==============================================================*/
create table teacher
(
   tid                  varchar(4) not null,
   cid                  varchar(4),
   semester             int,
   tname                varchar(10),
   primary key (tid)
);

alter table sc add constraint FK_Reference_2 foreign key (sid)
      references student (sid) on delete restrict on update restrict;

alter table sc add constraint FK_Reference_3 foreign key (tid)
      references teacher (tid) on delete restrict on update restrict;

alter table sc add constraint FK_Reference_4 foreign key (cid, semester)
      references course (cid, semester) on delete restrict on update restrict;

alter table teacher add constraint FK_Reference_5 foreign key (cid, semester)
      references course (cid, semester) on delete restrict on update restrict;

