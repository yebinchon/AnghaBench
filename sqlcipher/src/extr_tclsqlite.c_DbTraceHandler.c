
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Tcl_DString ;
struct TYPE_2__ {int interp; int zTrace; } ;
typedef TYPE_1__ SqliteDb ;


 int Tcl_DStringAppend (int *,int ,int) ;
 int Tcl_DStringAppendElement (int *,char const*) ;
 int Tcl_DStringFree (int *) ;
 int Tcl_DStringInit (int *) ;
 int Tcl_DStringValue (int *) ;
 int Tcl_Eval (int ,int ) ;
 int Tcl_ResetResult (int ) ;

__attribute__((used)) static void DbTraceHandler(void *cd, const char *zSql){
  SqliteDb *pDb = (SqliteDb*)cd;
  Tcl_DString str;

  Tcl_DStringInit(&str);
  Tcl_DStringAppend(&str, pDb->zTrace, -1);
  Tcl_DStringAppendElement(&str, zSql);
  Tcl_Eval(pDb->interp, Tcl_DStringValue(&str));
  Tcl_DStringFree(&str);
  Tcl_ResetResult(pDb->interp);
}
