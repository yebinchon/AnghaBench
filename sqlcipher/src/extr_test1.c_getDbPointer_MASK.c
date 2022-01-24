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
struct SqliteDb {int /*<<< orphan*/ * db; } ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
struct TYPE_3__ {scalar_t__ objClientData; } ;
typedef  TYPE_1__ Tcl_CmdInfo ;

/* Variables and functions */
 int TCL_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (char const*) ; 

int FUNC2(Tcl_Interp *interp, const char *zA, sqlite3 **ppDb){
  struct SqliteDb *p;
  Tcl_CmdInfo cmdInfo;
  if( FUNC0(interp, zA, &cmdInfo) ){
    p = (struct SqliteDb*)cmdInfo.objClientData;
    *ppDb = p->db;
  }else{
    *ppDb = (sqlite3*)FUNC1(zA);
  }
  return TCL_OK;
}