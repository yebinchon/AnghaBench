
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Tcl_ThreadCreateType ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
struct TYPE_3__ {char* zVarname; int zScript; } ;
typedef TYPE_1__ SqlThread ;
typedef void* ClientData ;


 int Sqlite3_Init (int *) ;
 int Sqlitetest1_Init (int *) ;
 int TCL_ALL_EVENTS ;
 int TCL_DONT_WAIT ;
 int TCL_OK ;
 int TCL_THREAD_CREATE_RETURN ;
 int * Tcl_CreateInterp () ;
 int Tcl_CreateObjCommand (int *,char*,int ,void*,int ) ;
 int Tcl_DecrRefCount (int *) ;
 int Tcl_DeleteInterp (int *) ;
 scalar_t__ Tcl_DoOneEvent (int) ;
 int Tcl_Eval (int *,int ) ;
 int Tcl_ExitThread (int ) ;
 int * Tcl_GetObjResult (int *) ;
 int Tcl_IncrRefCount (int *) ;
 int Tcl_ListObjAppendElement (int *,int *,int *) ;
 int * Tcl_NewObj () ;
 int * Tcl_NewStringObj (char*,int) ;
 int blocking_prepare_v2_proc ;
 int blocking_step_proc ;
 int ckfree (void*) ;
 int clock_seconds_proc ;
 int postToParent (TYPE_1__*,int *) ;
 int sqlthread_proc ;

__attribute__((used)) static Tcl_ThreadCreateType tclScriptThread(ClientData pSqlThread){
  Tcl_Interp *interp;
  Tcl_Obj *pRes;
  Tcl_Obj *pList;
  int rc;
  SqlThread *p = (SqlThread *)pSqlThread;
  extern int Sqlitetest_mutex_Init(Tcl_Interp*);

  interp = Tcl_CreateInterp();
  Tcl_CreateObjCommand(interp, "clock_seconds", clock_seconds_proc, 0, 0);
  Tcl_CreateObjCommand(interp, "sqlthread", sqlthread_proc, pSqlThread, 0);







  Sqlitetest1_Init(interp);
  Sqlitetest_mutex_Init(interp);
  Sqlite3_Init(interp);

  rc = Tcl_Eval(interp, p->zScript);
  pRes = Tcl_GetObjResult(interp);
  pList = Tcl_NewObj();
  Tcl_IncrRefCount(pList);
  Tcl_IncrRefCount(pRes);

  if( rc!=TCL_OK ){
    Tcl_ListObjAppendElement(interp, pList, Tcl_NewStringObj("error", -1));
    Tcl_ListObjAppendElement(interp, pList, pRes);
    postToParent(p, pList);
    Tcl_DecrRefCount(pList);
    pList = Tcl_NewObj();
  }

  Tcl_ListObjAppendElement(interp, pList, Tcl_NewStringObj("set", -1));
  Tcl_ListObjAppendElement(interp, pList, Tcl_NewStringObj(p->zVarname, -1));
  Tcl_ListObjAppendElement(interp, pList, pRes);
  postToParent(p, pList);

  ckfree((void *)p);
  Tcl_DecrRefCount(pList);
  Tcl_DecrRefCount(pRes);
  Tcl_DeleteInterp(interp);
  while( Tcl_DoOneEvent(TCL_ALL_EVENTS|TCL_DONT_WAIT) );
  Tcl_ExitThread(0);
  TCL_THREAD_CREATE_RETURN;
}
