
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ rc; int member_0; } ;
struct TYPE_12__ {int member_0; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 int SQLITE_BUSY ;
 scalar_t__ SQLITE_OK ;
 int clear_error (TYPE_2__*,int ) ;
 int closedb (TYPE_2__*,TYPE_1__*) ;
 int execsql (TYPE_2__*,TYPE_1__*,char*) ;
 int opendb (TYPE_2__*,TYPE_1__*,char*,int ) ;
 int print_and_free_err (TYPE_2__*) ;
 char* sqlite3_mprintf (char*,int) ;
 int timetostop (TYPE_2__*) ;
 int usleep (int) ;

__attribute__((used)) static char *walthread1_ckpt_thread(int iTid, void *pArg){
  Error err = {0};
  Sqlite db = {0};
  int nCkpt = 0;

  opendb(&err, &db, "test.db", 0);
  while( !timetostop(&err) ){
    usleep(500*1000);
    execsql(&err, &db, "PRAGMA wal_checkpoint");
    if( err.rc==SQLITE_OK ) nCkpt++;
    clear_error(&err, SQLITE_BUSY);
  }
  closedb(&err, &db);

  print_and_free_err(&err);
  return sqlite3_mprintf("%d checkpoints", nCkpt);
}
