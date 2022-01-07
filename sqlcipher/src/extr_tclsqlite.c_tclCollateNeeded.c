
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int Tcl_Obj ;
struct TYPE_2__ {int interp; int pCollateNeeded; } ;
typedef TYPE_1__ SqliteDb ;


 int Tcl_DecrRefCount (int *) ;
 int * Tcl_DuplicateObj (int ) ;
 int Tcl_EvalObjEx (int ,int *,int ) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_ListObjAppendElement (int ,int *,int ) ;
 int Tcl_NewStringObj (char const*,int) ;

__attribute__((used)) static void tclCollateNeeded(
  void *pCtx,
  sqlite3 *db,
  int enc,
  const char *zName
){
  SqliteDb *pDb = (SqliteDb *)pCtx;
  Tcl_Obj *pScript = Tcl_DuplicateObj(pDb->pCollateNeeded);
  Tcl_IncrRefCount(pScript);
  Tcl_ListObjAppendElement(0, pScript, Tcl_NewStringObj(zName, -1));
  Tcl_EvalObjEx(pDb->interp, pScript, 0);
  Tcl_DecrRefCount(pScript);
}
