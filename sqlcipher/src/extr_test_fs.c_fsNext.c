
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {int pStmt; } ;
typedef TYPE_1__ fs_cursor ;


 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int sqlite3_step (int ) ;

__attribute__((used)) static int fsNext(sqlite3_vtab_cursor *cur){
  fs_cursor *pCur = (fs_cursor *)cur;
  int rc;

  rc = sqlite3_step(pCur->pStmt);
  if( rc==SQLITE_ROW || rc==SQLITE_DONE ) rc = SQLITE_OK;

  return rc;
}
