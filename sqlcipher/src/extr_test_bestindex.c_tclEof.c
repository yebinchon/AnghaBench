
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pStmt; } ;
typedef TYPE_1__ tcl_cursor ;
typedef int sqlite3_vtab_cursor ;



__attribute__((used)) static int tclEof(sqlite3_vtab_cursor *pVtabCursor){
  tcl_cursor *pCsr = (tcl_cursor*)pVtabCursor;
  return (pCsr->pStmt==0);
}
