
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct SqliteDb {int * db; } ;
typedef int sqlite3 ;
typedef int Tcl_Interp ;
struct TYPE_3__ {scalar_t__ objClientData; } ;
typedef TYPE_1__ Tcl_CmdInfo ;


 int TCL_OK ;
 scalar_t__ Tcl_GetCommandInfo (int *,char const*,TYPE_1__*) ;
 scalar_t__ sqlite3TestTextToPtr (char const*) ;

int getDbPointer(Tcl_Interp *interp, const char *zA, sqlite3 **ppDb){
  struct SqliteDb *p;
  Tcl_CmdInfo cmdInfo;
  if( Tcl_GetCommandInfo(interp, zA, &cmdInfo) ){
    p = (struct SqliteDb*)cmdInfo.objClientData;
    *ppDb = p->db;
  }else{
    *ppDb = (sqlite3*)sqlite3TestTextToPtr(zA);
  }
  return TCL_OK;
}
