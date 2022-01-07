
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pList2; scalar_t__ pList1; } ;
typedef TYPE_1__ tclvar_cursor ;
typedef int sqlite3_vtab_cursor ;


 int SQLITE_OK ;
 int Tcl_DecrRefCount (scalar_t__) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int tclvarClose(sqlite3_vtab_cursor *cur){
  tclvar_cursor *pCur = (tclvar_cursor *)cur;
  if( pCur->pList1 ){
    Tcl_DecrRefCount(pCur->pList1);
  }
  if( pCur->pList2 ){
    Tcl_DecrRefCount(pCur->pList2);
  }
  sqlite3_free(pCur);
  return SQLITE_OK;
}
