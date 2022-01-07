
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
struct TYPE_3__ {scalar_t__ objClientData; } ;
typedef TYPE_1__ Tcl_CmdInfo ;


 scalar_t__ Tcl_GetCommandInfo (int *,char*,TYPE_1__*) ;
 char* Tcl_GetString (int *) ;
 int assert (int *) ;
 scalar_t__ sqlite3TestTextToPtr (char*) ;

__attribute__((used)) static sqlite3 *getDbPointer(Tcl_Interp *pInterp, Tcl_Obj *pObj){
  sqlite3 *db;
  Tcl_CmdInfo info;
  char *zCmd = Tcl_GetString(pObj);
  if( Tcl_GetCommandInfo(pInterp, zCmd, &info) ){
    db = *((sqlite3 **)info.objClientData);
  }else{
    db = (sqlite3*)sqlite3TestTextToPtr(zCmd);
  }
  assert( db );
  return db;
}
