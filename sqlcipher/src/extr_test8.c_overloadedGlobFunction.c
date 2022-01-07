
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int Tcl_Interp ;
typedef int Tcl_DString ;


 int SQLITE_TRANSIENT ;
 int Tcl_DStringAppendElement (int *,char*) ;
 int Tcl_DStringFree (int *) ;
 int Tcl_DStringInit (int *) ;
 int Tcl_DStringValue (int *) ;
 int Tcl_Eval (int *,int ) ;
 int Tcl_GetStringResult (int *) ;
 int Tcl_ResetResult (int *) ;
 int sqlite3_result_error (int *,int ,int) ;
 int sqlite3_result_text (int *,int ,int,int ) ;
 int * sqlite3_user_data (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static void overloadedGlobFunction(
  sqlite3_context *pContext,
  int nArg,
  sqlite3_value **apArg
){
  Tcl_Interp *interp = sqlite3_user_data(pContext);
  Tcl_DString str;
  int i;
  int rc;
  Tcl_DStringInit(&str);
  Tcl_DStringAppendElement(&str, "::echo_glob_overload");
  for(i=0; i<nArg; i++){
    Tcl_DStringAppendElement(&str, (char*)sqlite3_value_text(apArg[i]));
  }
  rc = Tcl_Eval(interp, Tcl_DStringValue(&str));
  Tcl_DStringFree(&str);
  if( rc ){
    sqlite3_result_error(pContext, Tcl_GetStringResult(interp), -1);
  }else{
    sqlite3_result_text(pContext, Tcl_GetStringResult(interp),
                        -1, SQLITE_TRANSIENT);
  }
  Tcl_ResetResult(interp);
}
