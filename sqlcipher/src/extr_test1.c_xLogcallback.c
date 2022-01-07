
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Tcl_Obj ;
struct TYPE_2__ {int pInterp; int pObj; } ;


 int TCL_EVAL_DIRECT ;
 int TCL_EVAL_GLOBAL ;
 int Tcl_DecrRefCount (int *) ;
 int * Tcl_DuplicateObj (int ) ;
 int Tcl_EvalObjEx (int ,int *,int) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_ListObjAppendElement (int ,int *,int ) ;
 int Tcl_NewStringObj (char*,int) ;
 TYPE_1__ logcallback ;
 char* sqlite3ErrName (int) ;

__attribute__((used)) static void xLogcallback(void *unused, int err, char *zMsg){
  Tcl_Obj *pNew = Tcl_DuplicateObj(logcallback.pObj);
  Tcl_IncrRefCount(pNew);
  Tcl_ListObjAppendElement(
      0, pNew, Tcl_NewStringObj(sqlite3ErrName(err), -1)
  );
  Tcl_ListObjAppendElement(0, pNew, Tcl_NewStringObj(zMsg, -1));
  Tcl_EvalObjEx(logcallback.pInterp, pNew, TCL_EVAL_GLOBAL|TCL_EVAL_DIRECT);
  Tcl_DecrRefCount(pNew);
}
