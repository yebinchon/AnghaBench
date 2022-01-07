
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pCmd; } ;
typedef TYPE_1__ tcl_vtab ;
typedef int sqlite3_vtab ;


 int SQLITE_OK ;
 int Tcl_DecrRefCount (int ) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int tclDisconnect(sqlite3_vtab *pVtab){
  tcl_vtab *pTab = (tcl_vtab*)pVtab;
  Tcl_DecrRefCount(pTab->pCmd);
  sqlite3_free(pTab);
  return SQLITE_OK;
}
