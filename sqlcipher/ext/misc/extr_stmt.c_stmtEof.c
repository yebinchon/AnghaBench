
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pStmt; } ;
typedef TYPE_1__ stmt_cursor ;
typedef int sqlite3_vtab_cursor ;



__attribute__((used)) static int stmtEof(sqlite3_vtab_cursor *cur){
  stmt_cursor *pCur = (stmt_cursor*)cur;
  return pCur->pStmt==0;
}
