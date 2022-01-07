
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;


 int SQLITE_STATIC ;
 int SQLITE_TRANSIENT ;
 int SQLITE_UTF8 ;
 int Tcl_DecrRefCount (int *) ;
 int Tcl_EvalObjEx (int *,int *,int ) ;
 int Tcl_GetStringResult (int *) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_ListObjAppendElement (int *,int *,int *) ;
 int * Tcl_NewStringObj (char*,int) ;
 int sqlite3ValueFree (int *) ;
 int * sqlite3ValueNew (int ) ;
 int sqlite3ValueSetStr (int *,int,int ,int ,int ) ;
 int sqlite3_result_text (int *,int ,int,int ) ;
 int sqlite3_result_text16be (int *,int ,int,int ) ;
 scalar_t__ sqlite3_user_data (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 int sqlite3_value_text16be (int *) ;

__attribute__((used)) static void test_function_utf8(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **argv
){
  Tcl_Interp *interp;
  Tcl_Obj *pX;
  sqlite3_value *pVal;
  interp = (Tcl_Interp *)sqlite3_user_data(pCtx);
  pX = Tcl_NewStringObj("test_function", -1);
  Tcl_IncrRefCount(pX);
  Tcl_ListObjAppendElement(interp, pX, Tcl_NewStringObj("UTF-8", -1));
  Tcl_ListObjAppendElement(interp, pX,
      Tcl_NewStringObj((char*)sqlite3_value_text(argv[0]), -1));
  Tcl_EvalObjEx(interp, pX, 0);
  Tcl_DecrRefCount(pX);
  sqlite3_result_text(pCtx, Tcl_GetStringResult(interp), -1, SQLITE_TRANSIENT);
  pVal = sqlite3ValueNew(0);
  sqlite3ValueSetStr(pVal, -1, Tcl_GetStringResult(interp),
      SQLITE_UTF8, SQLITE_STATIC);
  sqlite3_result_text16be(pCtx, sqlite3_value_text16be(pVal),
      -1, SQLITE_TRANSIENT);
  sqlite3ValueFree(pVal);
}
