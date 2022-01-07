
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tcl_Interp ;


 int TCL_OK ;
 int Tcl_CreateObjCommand (int *,char*,int ,int ,int ) ;
 int testAsyncControl ;
 int testAsyncInit ;
 int testAsyncShutdown ;
 int testAsyncStart ;
 int testAsyncWait ;

int Sqlitetestasync_Init(Tcl_Interp *interp){
  return TCL_OK;
}
