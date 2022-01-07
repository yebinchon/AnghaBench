
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iRowid; scalar_t__ pStmt; } ;
typedef TYPE_1__ stmt_cursor ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;


 int stmtNext (int *) ;

__attribute__((used)) static int stmtFilter(
  sqlite3_vtab_cursor *pVtabCursor,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  stmt_cursor *pCur = (stmt_cursor *)pVtabCursor;
  pCur->pStmt = 0;
  pCur->iRowid = 0;
  return stmtNext(pVtabCursor);
}
