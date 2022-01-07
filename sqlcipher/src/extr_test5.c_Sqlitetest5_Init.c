
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aCmd ;
typedef int Tcl_ObjCmdProc ;
typedef int Tcl_Interp ;


 int SQLITE_OK ;
 int Tcl_CreateObjCommand (int *,char*,int *,int ,int ) ;





int Sqlitetest5_Init(Tcl_Interp *interp){
  static struct {
    char *zName;
    Tcl_ObjCmdProc *xProc;
  } aCmd[] = {
    { "binarize", (Tcl_ObjCmdProc*)131 },
    { "test_value_overhead", (Tcl_ObjCmdProc*)128 },
    { "test_translate", (Tcl_ObjCmdProc*)130 },
    { "translate_selftest", (Tcl_ObjCmdProc*)129},
  };
  int i;
  for(i=0; i<sizeof(aCmd)/sizeof(aCmd[0]); i++){
    Tcl_CreateObjCommand(interp, aCmd[i].zName, aCmd[i].xProc, 0, 0);
  }
  return SQLITE_OK;
}
