
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int Tcl_Interp ;


 int TCL_OK ;
 scalar_t__ sqlite3TestTextToPtr (char const*) ;

__attribute__((used)) static int getStmtPointer(
  Tcl_Interp *interp,
  const char *zArg,
  sqlite3_stmt **ppStmt
){
  *ppStmt = (sqlite3_stmt*)sqlite3TestTextToPtr(zArg);
  return TCL_OK;
}
