
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tcl_Interp ;


 int TCL_OK ;
 int Tcl_CreateObjCommand (int *,char*,int ,int ,int ) ;
 int autoExtBrokenObjCmd ;
 int autoExtCubeObjCmd ;
 int autoExtSqrObjCmd ;
 int cancelAutoExtBrokenObjCmd ;
 int cancelAutoExtCubeObjCmd ;
 int cancelAutoExtSqrObjCmd ;
 int resetAutoExtObjCmd ;

int Sqlitetest_autoext_Init(Tcl_Interp *interp){

  Tcl_CreateObjCommand(interp, "sqlite3_auto_extension_sqr",
          autoExtSqrObjCmd, 0, 0);
  Tcl_CreateObjCommand(interp, "sqlite3_auto_extension_cube",
          autoExtCubeObjCmd, 0, 0);
  Tcl_CreateObjCommand(interp, "sqlite3_auto_extension_broken",
          autoExtBrokenObjCmd, 0, 0);
  Tcl_CreateObjCommand(interp, "sqlite3_cancel_auto_extension_sqr",
          cancelAutoExtSqrObjCmd, 0, 0);
  Tcl_CreateObjCommand(interp, "sqlite3_cancel_auto_extension_cube",
          cancelAutoExtCubeObjCmd, 0, 0);
  Tcl_CreateObjCommand(interp, "sqlite3_cancel_auto_extension_broken",
          cancelAutoExtBrokenObjCmd, 0, 0);

  Tcl_CreateObjCommand(interp, "sqlite3_reset_auto_extension",
          resetAutoExtObjCmd, 0, 0);
  return TCL_OK;
}
