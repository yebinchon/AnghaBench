
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_14__ {int rc; int member_0; } ;
struct TYPE_13__ {int db; int member_0; } ;
typedef TYPE_1__ Sqlite ;
typedef TYPE_2__ Error ;


 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int closedb (TYPE_2__*,TYPE_1__*) ;
 int execsql (TYPE_2__*,TYPE_1__*,char*) ;
 int opendb (TYPE_2__*,TYPE_1__*,char*,int ) ;
 int print_and_free_err (TYPE_2__*) ;
 int sqlite3_finalize (int *) ;
 char* sqlite3_mprintf (char*) ;
 int sqlite3_prepare_v2 (int ,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;
 int sqlite_error (TYPE_2__*,TYPE_1__*,char*) ;
 int timetostop (TYPE_2__*) ;

__attribute__((used)) static char *lookaside1_thread_reader(int iTid, void *pArg){
  Error err = {0};
  Sqlite db = {0};

  opendb(&err, &db, "test.db", 0);

  while( !timetostop(&err) ){
    sqlite3_stmt *pStmt = 0;
    int rc;

    sqlite3_prepare_v2(db.db, "SELECT 1 FROM t1", -1, &pStmt, 0);
    while( sqlite3_step(pStmt)==SQLITE_ROW ){
      execsql(&err, &db, "SELECT length(x||y||z) FROM t2");
    }
    rc = sqlite3_finalize(pStmt);
    if( err.rc==SQLITE_OK && rc!=SQLITE_OK ){
      sqlite_error(&err, &db, "finalize");
    }
  }

  closedb(&err, &db);
  print_and_free_err(&err);
  return sqlite3_mprintf("ok");
}
