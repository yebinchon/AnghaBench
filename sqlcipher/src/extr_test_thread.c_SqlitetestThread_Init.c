
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tcl_Interp ;


 int TCL_OK ;
 int Tcl_CreateObjCommand (int *,char*,int ,void*,int ) ;
 int blocking_prepare_v2_proc ;
 int blocking_step_proc ;
 int clock_seconds_proc ;
 int sqlthread_proc ;

int SqlitetestThread_Init(Tcl_Interp *interp){
  Tcl_CreateObjCommand(interp, "sqlthread", sqlthread_proc, 0, 0);
  Tcl_CreateObjCommand(interp, "clock_seconds", clock_seconds_proc, 0, 0);







  return TCL_OK;
}
