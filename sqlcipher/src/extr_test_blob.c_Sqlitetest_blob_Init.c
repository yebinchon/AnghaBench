
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aObjCmd ;
typedef int Tcl_ObjCmdProc ;
typedef int Tcl_Interp ;


 int TCL_OK ;
 int Tcl_CreateObjCommand (int *,char*,int *,int ,int ) ;






int Sqlitetest_blob_Init(Tcl_Interp *interp){

  static struct {
     char *zName;
     Tcl_ObjCmdProc *xProc;
  } aObjCmd[] = {
     { "sqlite3_blob_open", 130 },
     { "sqlite3_blob_close", 131 },
     { "sqlite3_blob_bytes", 132 },
     { "sqlite3_blob_read", 129 },
     { "sqlite3_blob_write", 128 },
  };
  int i;
  for(i=0; i<sizeof(aObjCmd)/sizeof(aObjCmd[0]); i++){
    Tcl_CreateObjCommand(interp, aObjCmd[i].zName, aObjCmd[i].xProc, 0, 0);
  }

  return TCL_OK;
}
