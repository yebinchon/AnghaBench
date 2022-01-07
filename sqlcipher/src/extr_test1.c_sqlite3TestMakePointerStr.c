
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tcl_Interp ;


 int TCL_OK ;
 int sqlite3_snprintf (int,char*,char*,void*) ;

int sqlite3TestMakePointerStr(Tcl_Interp *interp, char *zPtr, void *p){
  sqlite3_snprintf(100, zPtr, "%p", p);
  return TCL_OK;
}
