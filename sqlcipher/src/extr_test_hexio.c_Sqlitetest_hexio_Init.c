
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aObjCmd ;
typedef int Tcl_ObjCmdProc ;
typedef int Tcl_Interp ;


 int TCL_OK ;
 int Tcl_CreateObjCommand (int *,char*,int *,int ,int ) ;
int Sqlitetest_hexio_Init(Tcl_Interp *interp){
  static struct {
     char *zName;
     Tcl_ObjCmdProc *xProc;
  } aObjCmd[] = {
     { "hexio_read", 133 },
     { "hexio_write", 130 },
     { "hexio_get_int", 134 },
     { "hexio_render_int16", 132 },
     { "hexio_render_int32", 131 },
     { "utf8_to_utf8", 128 },
     { "read_fts3varint", 129 },
  };
  int i;
  for(i=0; i<sizeof(aObjCmd)/sizeof(aObjCmd[0]); i++){
    Tcl_CreateObjCommand(interp, aObjCmd[i].zName, aObjCmd[i].xProc, 0, 0);
  }
  return TCL_OK;
}
