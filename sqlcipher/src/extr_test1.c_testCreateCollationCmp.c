
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int interp; int pCmp; } ;
typedef TYPE_1__ TestCollationX ;
typedef int Tcl_Obj ;


 int TCL_EVAL_DIRECT ;
 int TCL_EVAL_GLOBAL ;
 scalar_t__ TCL_OK ;
 int Tcl_BackgroundError (int ) ;
 int Tcl_DecrRefCount (int *) ;
 int * Tcl_DuplicateObj (int ) ;
 scalar_t__ Tcl_EvalObjEx (int ,int *,int) ;
 scalar_t__ Tcl_GetIntFromObj (int ,int ,int*) ;
 int Tcl_GetObjResult (int ) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_ListObjAppendElement (int ,int *,int ) ;
 int Tcl_NewStringObj (char*,int) ;

__attribute__((used)) static int testCreateCollationCmp(
  void *pCtx,
  int nLeft,
  const void *zLeft,
  int nRight,
  const void *zRight
){
  TestCollationX *p = (TestCollationX *)pCtx;
  Tcl_Obj *pScript = Tcl_DuplicateObj(p->pCmp);
  int iRes = 0;

  Tcl_IncrRefCount(pScript);
  Tcl_ListObjAppendElement(0, pScript, Tcl_NewStringObj((char *)zLeft, nLeft));
  Tcl_ListObjAppendElement(0, pScript, Tcl_NewStringObj((char *)zRight,nRight));

  if( TCL_OK!=Tcl_EvalObjEx(p->interp, pScript, TCL_EVAL_DIRECT|TCL_EVAL_GLOBAL)
   || TCL_OK!=Tcl_GetIntFromObj(p->interp, Tcl_GetObjResult(p->interp), &iRes)
  ){
    Tcl_BackgroundError(p->interp);
  }
  Tcl_DecrRefCount(pScript);

  return iRes;
}
