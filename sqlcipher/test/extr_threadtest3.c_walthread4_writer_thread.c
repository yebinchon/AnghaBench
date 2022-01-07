
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_14__ {int member_0; } ;
struct TYPE_13__ {int member_0; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 int closedb (TYPE_2__*,TYPE_1__*) ;
 int execsql_i64 (TYPE_2__*,TYPE_1__*,char*,int*) ;
 int opendb (TYPE_2__*,TYPE_1__*,char*,int ) ;
 int print_and_free_err (TYPE_2__*) ;
 int sql_script (TYPE_2__*,TYPE_1__*,char*) ;
 int timetostop (TYPE_2__*) ;

__attribute__((used)) static char *walthread4_writer_thread(int iTid, void *pArg){
  Error err = {0};
  Sqlite db = {0};
  i64 iRow = 1;

  opendb(&err, &db, "test.db", 0);
  sql_script(&err, &db, "PRAGMA wal_autocheckpoint = 15;");
  while( !timetostop(&err) ){
    execsql_i64(
        &err, &db, "REPLACE INTO t1 VALUES(:iRow, randomblob(300))", &iRow
    );
    iRow++;
    if( iRow==10 ) iRow = 0;
  }
  closedb(&err, &db);

  print_and_free_err(&err);
  return 0;
}
