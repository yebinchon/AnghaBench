
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int Tcl_Obj ;
struct TYPE_2__ {int pUpdateHook; int interp; } ;
typedef TYPE_1__ SqliteDb ;


 int SQLITE_DELETE ;
 int SQLITE_INSERT ;
 int SQLITE_UPDATE ;
 int TCL_EVAL_DIRECT ;
 int Tcl_DecrRefCount (int *) ;
 int * Tcl_DuplicateObj (int) ;
 int Tcl_EvalObjEx (int ,int *,int ) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_ListObjAppendElement (int ,int *,int ) ;
 int Tcl_NewStringObj (char const*,int) ;
 int Tcl_NewWideIntObj (int ) ;
 int assert (int) ;

__attribute__((used)) static void DbUpdateHandler(
  void *p,
  int op,
  const char *zDb,
  const char *zTbl,
  sqlite_int64 rowid
){
  SqliteDb *pDb = (SqliteDb *)p;
  Tcl_Obj *pCmd;
  static const char *azStr[] = {"DELETE", "INSERT", "UPDATE"};

  assert( (SQLITE_DELETE-1)/9 == 0 );
  assert( (SQLITE_INSERT-1)/9 == 1 );
  assert( (SQLITE_UPDATE-1)/9 == 2 );

  assert( pDb->pUpdateHook );
  assert( op==SQLITE_INSERT || op==SQLITE_UPDATE || op==SQLITE_DELETE );

  pCmd = Tcl_DuplicateObj(pDb->pUpdateHook);
  Tcl_IncrRefCount(pCmd);
  Tcl_ListObjAppendElement(0, pCmd, Tcl_NewStringObj(azStr[(op-1)/9], -1));
  Tcl_ListObjAppendElement(0, pCmd, Tcl_NewStringObj(zDb, -1));
  Tcl_ListObjAppendElement(0, pCmd, Tcl_NewStringObj(zTbl, -1));
  Tcl_ListObjAppendElement(0, pCmd, Tcl_NewWideIntObj(rowid));
  Tcl_EvalObjEx(pDb->interp, pCmd, TCL_EVAL_DIRECT);
  Tcl_DecrRefCount(pCmd);
}
