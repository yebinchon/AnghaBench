
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int member_0; } ;
struct TYPE_11__ {int member_0; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 int closedb (TYPE_2__*,TYPE_1__*) ;
 int integrity_check (TYPE_2__*,TYPE_1__*) ;
 int opendb (TYPE_2__*,TYPE_1__*,char*,int ) ;
 int print_and_free_err (TYPE_2__*) ;
 int timetostop (TYPE_2__*) ;

__attribute__((used)) static char *walthread4_reader_thread(int iTid, void *pArg){
  Error err = {0};
  Sqlite db = {0};

  opendb(&err, &db, "test.db", 0);
  while( !timetostop(&err) ){
    integrity_check(&err, &db);
  }
  closedb(&err, &db);

  print_and_free_err(&err);
  return 0;
}
