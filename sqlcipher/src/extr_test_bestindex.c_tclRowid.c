
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pStmt; } ;
typedef TYPE_1__ tcl_cursor ;
typedef int sqlite_int64 ;
typedef int sqlite3_vtab_cursor ;


 int SQLITE_OK ;
 int sqlite3_column_int64 (int ,int ) ;

__attribute__((used)) static int tclRowid(sqlite3_vtab_cursor *pVtabCursor, sqlite_int64 *pRowid){
  tcl_cursor *pCsr = (tcl_cursor*)pVtabCursor;
  *pRowid = sqlite3_column_int64(pCsr->pStmt, 0);
  return SQLITE_OK;
}
