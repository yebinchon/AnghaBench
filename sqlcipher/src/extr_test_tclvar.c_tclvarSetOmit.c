
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tcl_Obj ;
typedef int Tcl_Interp ;


 int TCL_OK ;
 int Tcl_Eval (int *,char*) ;
 int Tcl_GetBooleanFromObj (int ,int *,int*) ;
 int * Tcl_GetObjResult (int *) ;

__attribute__((used)) static int tclvarSetOmit(Tcl_Interp *interp){
  int rc;
  int res = 0;
  Tcl_Obj *pRes;
  rc = Tcl_Eval(interp,
    "expr {[info exists ::tclvar_set_omit] && $::tclvar_set_omit}"
  );
  if( rc==TCL_OK ){
    pRes = Tcl_GetObjResult(interp);
    rc = Tcl_GetBooleanFromObj(0, pRes, &res);
  }
  return (rc==TCL_OK && res);
}
