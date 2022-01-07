
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pStmt; int db; int iRowid; } ;
typedef TYPE_1__ stmt_cursor ;
typedef int sqlite3_vtab_cursor ;


 int SQLITE_OK ;
 int sqlite3_next_stmt (int ,int ) ;

__attribute__((used)) static int stmtNext(sqlite3_vtab_cursor *cur){
  stmt_cursor *pCur = (stmt_cursor*)cur;
  pCur->iRowid++;
  pCur->pStmt = sqlite3_next_stmt(pCur->db, pCur->pStmt);
  return SQLITE_OK;
}
