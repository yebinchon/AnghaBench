
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int member_0; } ;
struct TYPE_12__ {int member_0; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 int SQLITE_LOCKED ;
 int clear_error (TYPE_2__*,int ) ;
 int closedb (TYPE_2__*,TYPE_1__*) ;
 int opendb (TYPE_2__*,TYPE_1__*,char*,int ) ;
 int print_and_free_err (TYPE_2__*) ;
 int sql_script (TYPE_2__*,TYPE_1__*,char*) ;
 char* sqlite3_mprintf (char*) ;
 int timetostop (TYPE_2__*) ;

__attribute__((used)) static char *stress_thread_2(int iTid, void *pArg){
  Error err = {0};
  Sqlite db = {0};
  while( !timetostop(&err) ){
    opendb(&err, &db, "test.db", 0);
    sql_script(&err, &db, "SELECT * FROM sqlite_master;");
    clear_error(&err, SQLITE_LOCKED);
    closedb(&err, &db);
  }
  print_and_free_err(&err);
  return sqlite3_mprintf("ok");
}
