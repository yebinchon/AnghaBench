#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_api_routines ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  aObjCmd ;
typedef  int /*<<< orphan*/  Tcl_ObjCmdProc ;
typedef  int /*<<< orphan*/  Tcl_Interp ;

/* Variables and functions */
 int TCL_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  abuse_create_function 130 
#define  autoinstall_test_funcs 129 
#define  install_fts3_rank_function 128 
 scalar_t__ registerTestFunctions ; 
 int /*<<< orphan*/  FUNC1 (void (*) ()) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(Tcl_Interp *interp){
  static struct {
     char *zName;
     Tcl_ObjCmdProc *xProc;
  } aObjCmd[] = {
     { "autoinstall_test_functions",    autoinstall_test_funcs },
     { "abuse_create_function",         abuse_create_function  },
     { "install_fts3_rank_function",    install_fts3_rank_function  },
  };
  int i;
  extern int FUNC4(sqlite3 *, char **, const sqlite3_api_routines *);

  for(i=0; i<sizeof(aObjCmd)/sizeof(aObjCmd[0]); i++){
    FUNC0(interp, aObjCmd[i].zName, aObjCmd[i].xProc, 0, 0);
  }
  FUNC2();
  FUNC1((void(*)(void))registerTestFunctions);
  FUNC1((void(*)(void))Md5_Register);
  return TCL_OK;
}