
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ i2; int * pList2; } ;
typedef TYPE_1__ tclvar_cursor ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;


 int TCL_EVAL_GLOBAL ;
 int Tcl_DecrRefCount (int *) ;
 int Tcl_EvalObjEx (int *,int *,int ) ;
 int * Tcl_GetObjResult (int *) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_ListObjAppendElement (int ,int *,int *) ;
 int Tcl_ListObjLength (int ,int *,int*) ;
 int * Tcl_NewStringObj (char*,int) ;
 int assert (int) ;

__attribute__((used)) static int next2(Tcl_Interp *interp, tclvar_cursor *pCur, Tcl_Obj *pObj){
  Tcl_Obj *p;

  if( pObj ){
    if( !pCur->pList2 ){
      p = Tcl_NewStringObj("array names", -1);
      Tcl_IncrRefCount(p);
      Tcl_ListObjAppendElement(0, p, pObj);
      Tcl_EvalObjEx(interp, p, TCL_EVAL_GLOBAL);
      Tcl_DecrRefCount(p);
      pCur->pList2 = Tcl_GetObjResult(interp);
      Tcl_IncrRefCount(pCur->pList2);
      assert( pCur->i2==0 );
    }else{
      int n = 0;
      pCur->i2++;
      Tcl_ListObjLength(0, pCur->pList2, &n);
      if( pCur->i2>=n ){
        Tcl_DecrRefCount(pCur->pList2);
        pCur->pList2 = 0;
        pCur->i2 = 0;
        return 0;
      }
    }
  }

  return 1;
}
