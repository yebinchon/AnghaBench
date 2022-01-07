
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pDel; int pCmp; int interp; } ;
typedef TYPE_1__ TestCollationX ;


 int TCL_EVAL_DIRECT ;
 int TCL_EVAL_GLOBAL ;
 int TCL_OK ;
 int Tcl_BackgroundError (int ) ;
 int Tcl_DecrRefCount (int ) ;
 int Tcl_EvalObjEx (int ,int ,int) ;
 int sqlite3_free (void*) ;

__attribute__((used)) static void testCreateCollationDel(void *pCtx){
  TestCollationX *p = (TestCollationX *)pCtx;

  int rc = Tcl_EvalObjEx(p->interp, p->pDel, TCL_EVAL_DIRECT|TCL_EVAL_GLOBAL);
  if( rc!=TCL_OK ){
    Tcl_BackgroundError(p->interp);
  }

  Tcl_DecrRefCount(p->pCmp);
  Tcl_DecrRefCount(p->pDel);
  sqlite3_free((void *)p);
}
