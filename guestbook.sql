create table guestbook(
             no number(10),
             name VARCHAR2(80),
             password VARCHAR2(20),
             content VARCHAR2(2000),
             reg_date date,
             primary key(no)
);

create sequence seq_no
increment by 1
start with 1;

drop sequence seq_no;

delete from guestbook;

drop table guestbook;

insert into guestbook values(seq_no.nextval,'김민수','12345','바보', SYSDATE);
insert into guestbook values(seq_no.nextval,'김한기','12345','부보', SYSDATE);

select no,
       name,
       password,
       content,
       TO_CHAR(reg_date,'YYYY-MM-DD HH:MM:SS') reg_date
from guestbook;