
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int aCmd ;
typedef int Tcl_ObjCmdProc ;
typedef int Tcl_Interp ;
struct TYPE_2__ {int disableTry; int disableInit; } ;


 int SQLITE_OK ;
 int TCL_LINK_INT ;
 int Tcl_CreateObjCommand (int *,char*,int *,int ,int ) ;
 int Tcl_LinkVar (int *,char*,char*,int ) ;
 TYPE_1__ g ;
int Sqlitetest_mutex_Init(Tcl_Interp *interp){
  static struct {
    char *zName;
    Tcl_ObjCmdProc *xProc;
  } aCmd[] = {
    { "sqlite3_shutdown", (Tcl_ObjCmdProc*)128 },
    { "sqlite3_initialize", (Tcl_ObjCmdProc*)133 },
    { "sqlite3_config", (Tcl_ObjCmdProc*)136 },

    { "enter_static_mutex", (Tcl_ObjCmdProc*)134 },
    { "leave_static_mutex", (Tcl_ObjCmdProc*)130 },

    { "enter_db_mutex", (Tcl_ObjCmdProc*)135 },
    { "leave_db_mutex", (Tcl_ObjCmdProc*)131 },

    { "alloc_dealloc_mutex", (Tcl_ObjCmdProc*)138 },
    { "install_mutex_counters", (Tcl_ObjCmdProc*)132 },
    { "read_mutex_counters", (Tcl_ObjCmdProc*)129 },
    { "clear_mutex_counters", (Tcl_ObjCmdProc*)137 },
  };
  int i;
  for(i=0; i<sizeof(aCmd)/sizeof(aCmd[0]); i++){
    Tcl_CreateObjCommand(interp, aCmd[i].zName, aCmd[i].xProc, 0, 0);
  }

  Tcl_LinkVar(interp, "disable_mutex_init",
              (char*)&g.disableInit, TCL_LINK_INT);
  Tcl_LinkVar(interp, "disable_mutex_try",
              (char*)&g.disableTry, TCL_LINK_INT);
  return SQLITE_OK;
}
