
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pStmt; } ;
typedef TYPE_1__ tcl_cursor ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;


 int SQLITE_OK ;
 int sqlite3_column_value (int ,int) ;
 int sqlite3_result_value (int *,int ) ;

__attribute__((used)) static int tclColumn(
  sqlite3_vtab_cursor *pVtabCursor,
  sqlite3_context *ctx,
  int i
){
  tcl_cursor *pCsr = (tcl_cursor*)pVtabCursor;
  sqlite3_result_value(ctx, sqlite3_column_value(pCsr->pStmt, i+1));
  return SQLITE_OK;
}
