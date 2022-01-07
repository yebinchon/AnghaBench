
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aCmd ;
typedef int Tcl_Interp ;
typedef int Tcl_CmdProc ;


 int TCL_OK ;
 int Tcl_CreateCommand (int *,char*,int *,int ,int ) ;
 int Tcl_CreateObjCommand (int *,char*,int ,int ,int ) ;







 int btree_insert ;
int Sqlitetest3_Init(Tcl_Interp *interp){
  static struct {
     char *zName;
     Tcl_CmdProc *xProc;
  } aCmd[] = {
     { "btree_open", (Tcl_CmdProc*)132 },
     { "btree_close", (Tcl_CmdProc*)140 },
     { "btree_begin_transaction", (Tcl_CmdProc*)141 },
     { "btree_pager_stats", (Tcl_CmdProc*)131 },
     { "btree_cursor", (Tcl_CmdProc*)138 },
     { "btree_close_cursor", (Tcl_CmdProc*)139 },
     { "btree_next", (Tcl_CmdProc*)133 },
     { "btree_eof", (Tcl_CmdProc*)137 },
     { "btree_payload_size", (Tcl_CmdProc*)130 },
     { "btree_first", (Tcl_CmdProc*)136 },
     { "btree_varint_test", (Tcl_CmdProc*)128 },
     { "btree_from_db", (Tcl_CmdProc*)135 },
     { "btree_ismemdb", (Tcl_CmdProc*)134 },
     { "btree_set_cache_size", (Tcl_CmdProc*)129 }
  };
  int i;

  for(i=0; i<sizeof(aCmd)/sizeof(aCmd[0]); i++){
    Tcl_CreateCommand(interp, aCmd[i].zName, aCmd[i].xProc, 0, 0);
  }

  Tcl_CreateObjCommand(interp, "btree_insert", btree_insert, 0, 0);

  return TCL_OK;
}
