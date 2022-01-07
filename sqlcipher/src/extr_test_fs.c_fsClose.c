
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_3__ {struct TYPE_3__* zBuf; int pStmt; } ;
typedef TYPE_1__ fs_cursor ;


 int SQLITE_OK ;
 int sqlite3_finalize (int ) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int fsClose(sqlite3_vtab_cursor *cur){
  fs_cursor *pCur = (fs_cursor *)cur;
  sqlite3_finalize(pCur->pStmt);
  sqlite3_free(pCur->zBuf);
  sqlite3_free(pCur);
  return SQLITE_OK;
}
