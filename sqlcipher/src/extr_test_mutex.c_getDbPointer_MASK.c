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
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
struct TYPE_3__ {scalar_t__ objClientData; } ;
typedef  TYPE_1__ Tcl_CmdInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static sqlite3 *FUNC4(Tcl_Interp *pInterp, Tcl_Obj *pObj){
  sqlite3 *db;
  Tcl_CmdInfo info;
  char *zCmd = FUNC1(pObj);
  if( FUNC0(pInterp, zCmd, &info) ){
    db = *((sqlite3 **)info.objClientData);
  }else{
    db = (sqlite3*)FUNC3(zCmd);
  }
  FUNC2( db );
  return db;
}