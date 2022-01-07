
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aCmd ;
typedef int Tcl_Interp ;
typedef int Tcl_CmdProc ;


 int TCL_LINK_INT ;
 int TCL_LINK_READ_ONLY ;
 int TCL_OK ;
 int Tcl_CreateCommand (int *,char*,int *,int ,int ) ;
 int Tcl_LinkVar (int *,char*,char*,int) ;
 int sqlite3PendingByte ;



int Sqlitetest2_Init(Tcl_Interp *interp){
  extern int sqlite3_io_error_persist;
  extern int sqlite3_io_error_pending;
  extern int sqlite3_io_error_hit;
  extern int sqlite3_io_error_hardhit;
  extern int sqlite3_diskfull_pending;
  extern int sqlite3_diskfull;
  static struct {
    char *zName;
    Tcl_CmdProc *xProc;
  } aCmd[] = {
    { "pager_open", (Tcl_CmdProc*)137 },
    { "pager_close", (Tcl_CmdProc*)139 },
    { "pager_commit", (Tcl_CmdProc*)138 },
    { "pager_rollback", (Tcl_CmdProc*)135 },
    { "pager_stmt_begin", (Tcl_CmdProc*)133 },
    { "pager_stmt_commit", (Tcl_CmdProc*)132 },
    { "pager_stmt_rollback", (Tcl_CmdProc*)131 },
    { "pager_stats", (Tcl_CmdProc*)134 },
    { "pager_pagecount", (Tcl_CmdProc*)136 },
    { "page_get", (Tcl_CmdProc*)145 },
    { "page_lookup", (Tcl_CmdProc*)144 },
    { "page_unref", (Tcl_CmdProc*)141 },
    { "page_read", (Tcl_CmdProc*)142 },
    { "page_write", (Tcl_CmdProc*)140 },
    { "page_number", (Tcl_CmdProc*)143 },
    { "pager_truncate", (Tcl_CmdProc*)130 },

    { "fake_big_file", (Tcl_CmdProc*)147 },

    { "sqlite3BitvecBuiltinTest",(Tcl_CmdProc*)129 },
    { "sqlite3_test_control_pending_byte", (Tcl_CmdProc*)128 },
    { "sqlite3_test_control_fault_install", (Tcl_CmdProc*)146 },
  };
  int i;
  for(i=0; i<sizeof(aCmd)/sizeof(aCmd[0]); i++){
    Tcl_CreateCommand(interp, aCmd[i].zName, aCmd[i].xProc, 0, 0);
  }
  Tcl_LinkVar(interp, "sqlite_io_error_pending",
     (char*)&sqlite3_io_error_pending, TCL_LINK_INT);
  Tcl_LinkVar(interp, "sqlite_io_error_persist",
     (char*)&sqlite3_io_error_persist, TCL_LINK_INT);
  Tcl_LinkVar(interp, "sqlite_io_error_hit",
     (char*)&sqlite3_io_error_hit, TCL_LINK_INT);
  Tcl_LinkVar(interp, "sqlite_io_error_hardhit",
     (char*)&sqlite3_io_error_hardhit, TCL_LINK_INT);
  Tcl_LinkVar(interp, "sqlite_diskfull_pending",
     (char*)&sqlite3_diskfull_pending, TCL_LINK_INT);
  Tcl_LinkVar(interp, "sqlite_diskfull",
     (char*)&sqlite3_diskfull, TCL_LINK_INT);

  Tcl_LinkVar(interp, "sqlite_pending_byte",
     (char*)&sqlite3PendingByte, TCL_LINK_INT | TCL_LINK_READ_ONLY);

  return TCL_OK;
}
