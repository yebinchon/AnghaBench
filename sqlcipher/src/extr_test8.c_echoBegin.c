
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_3__ {int inTransaction; int zTableName; int * interp; } ;
typedef TYPE_1__ echo_vtab ;
typedef int Tcl_Interp ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int TCL_GLOBAL_ONLY ;
 char* Tcl_GetVar (int *,char*,int ) ;
 int assert (int) ;
 int echoTransactionCall (int *,char*) ;
 scalar_t__ simulateVtabError (TYPE_1__*,char*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int echoBegin(sqlite3_vtab *tab){
  int rc;
  echo_vtab *pVtab = (echo_vtab *)tab;
  Tcl_Interp *interp = pVtab->interp;
  const char *zVal;



  assert( !pVtab->inTransaction );

  if( simulateVtabError(pVtab, "xBegin") ){
    return SQLITE_ERROR;
  }

  rc = echoTransactionCall(tab, "xBegin");

  if( rc==SQLITE_OK ){




    zVal = Tcl_GetVar(interp, "echo_module_begin_fail", TCL_GLOBAL_ONLY);
    if( zVal && 0==strcmp(zVal, pVtab->zTableName) ){
      rc = SQLITE_ERROR;
    }
  }
  if( rc==SQLITE_OK ){
    pVtab->inTransaction = 1;
  }
  return rc;
}
