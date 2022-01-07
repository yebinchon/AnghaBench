
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;


 int SQLITE_PTR_TO_INT (void*) ;
 int SQLITE_STATIC ;



 int Tcl_DecrRefCount (int *) ;
 int Tcl_EvalObjEx (int *,int *,int ) ;
 int Tcl_GetIntFromObj (int *,int ,int*) ;
 int Tcl_GetObjResult (int *) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_ListObjAppendElement (int *,int *,int *) ;
 int * Tcl_NewStringObj (char*,int) ;
 int assert (int ) ;
 int * pTestCollateInterp ;
 int sqlite3BeginBenignMalloc () ;
 int sqlite3EndBenignMalloc () ;
 int sqlite3ValueFree (int *) ;
 int * sqlite3ValueNew (int ) ;
 int sqlite3ValueSetStr (int *,int,void const*,int,int ) ;
 int sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static int test_collate_func(
  void *pCtx,
  int nA, const void *zA,
  int nB, const void *zB
){
  Tcl_Interp *i = pTestCollateInterp;
  int encin = SQLITE_PTR_TO_INT(pCtx);
  int res;
  int n;

  sqlite3_value *pVal;
  Tcl_Obj *pX;

  pX = Tcl_NewStringObj("test_collate", -1);
  Tcl_IncrRefCount(pX);

  switch( encin ){
    case 128:
      Tcl_ListObjAppendElement(i,pX,Tcl_NewStringObj("UTF-8",-1));
      break;
    case 129:
      Tcl_ListObjAppendElement(i,pX,Tcl_NewStringObj("UTF-16LE",-1));
      break;
    case 130:
      Tcl_ListObjAppendElement(i,pX,Tcl_NewStringObj("UTF-16BE",-1));
      break;
    default:
      assert(0);
  }

  sqlite3BeginBenignMalloc();
  pVal = sqlite3ValueNew(0);
  if( pVal ){
    sqlite3ValueSetStr(pVal, nA, zA, encin, SQLITE_STATIC);
    n = sqlite3_value_bytes(pVal);
    Tcl_ListObjAppendElement(i,pX,
        Tcl_NewStringObj((char*)sqlite3_value_text(pVal),n));
    sqlite3ValueSetStr(pVal, nB, zB, encin, SQLITE_STATIC);
    n = sqlite3_value_bytes(pVal);
    Tcl_ListObjAppendElement(i,pX,
        Tcl_NewStringObj((char*)sqlite3_value_text(pVal),n));
    sqlite3ValueFree(pVal);
  }
  sqlite3EndBenignMalloc();

  Tcl_EvalObjEx(i, pX, 0);
  Tcl_DecrRefCount(pX);
  Tcl_GetIntFromObj(i, Tcl_GetObjResult(i), &res);
  return res;
}
