#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Tcl_ThreadCreateType ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
struct TYPE_3__ {char* zVarname; int /*<<< orphan*/  zScript; } ;
typedef  TYPE_1__ SqlThread ;
typedef  void* ClientData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int TCL_ALL_EVENTS ; 
 int TCL_DONT_WAIT ; 
 int TCL_OK ; 
 int /*<<< orphan*/  TCL_THREAD_CREATE_RETURN ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 (char*,int) ; 
 int /*<<< orphan*/  blocking_prepare_v2_proc ; 
 int /*<<< orphan*/  blocking_step_proc ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  clock_seconds_proc ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sqlthread_proc ; 

__attribute__((used)) static Tcl_ThreadCreateType FUNC16(ClientData pSqlThread){
  Tcl_Interp *interp;
  Tcl_Obj *pRes;
  Tcl_Obj *pList;
  int rc;
  SqlThread *p = (SqlThread *)pSqlThread;
  extern int FUNC0(Tcl_Interp*);

  interp = FUNC2();
  FUNC3(interp, "clock_seconds", clock_seconds_proc, 0, 0);
  FUNC3(interp, "sqlthread", sqlthread_proc, pSqlThread, 0);
#if SQLITE_OS_UNIX && defined(SQLITE_ENABLE_UNLOCK_NOTIFY)
  Tcl_CreateObjCommand(interp, "sqlite3_blocking_step", blocking_step_proc,0,0);
  Tcl_CreateObjCommand(interp, 
      "sqlite3_blocking_prepare_v2", blocking_prepare_v2_proc, (void *)1, 0);
  Tcl_CreateObjCommand(interp, 
      "sqlite3_nonblocking_prepare_v2", blocking_prepare_v2_proc, 0, 0);
#endif
  FUNC1(interp);
  FUNC0(interp);
  FUNC0(interp);

  rc = FUNC7(interp, p->zScript);
  pRes = FUNC9(interp);
  pList = FUNC12();
  FUNC10(pList);
  FUNC10(pRes);

  if( rc!=TCL_OK ){
    FUNC11(interp, pList, FUNC13("error", -1));
    FUNC11(interp, pList, pRes);
    FUNC15(p, pList);
    FUNC4(pList);
    pList = FUNC12();
  }

  FUNC11(interp, pList, FUNC13("set", -1));
  FUNC11(interp, pList, FUNC13(p->zVarname, -1));
  FUNC11(interp, pList, pRes);
  FUNC15(p, pList);

  FUNC14((void *)p);
  FUNC4(pList);
  FUNC4(pRes);
  FUNC5(interp);
  while( FUNC6(TCL_ALL_EVENTS|TCL_DONT_WAIT) );
  FUNC8(0);
  TCL_THREAD_CREATE_RETURN;
}