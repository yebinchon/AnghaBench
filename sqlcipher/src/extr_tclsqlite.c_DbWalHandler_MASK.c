#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;
struct TYPE_2__ {int pWalHook; int /*<<< orphan*/ * db; int /*<<< orphan*/ * interp; } ;
typedef  TYPE_1__ SqliteDb ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ TCL_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(
  void *clientData,
  sqlite3 *db,
  const char *zDb,
  int nEntry
){
  int ret = SQLITE_OK;
  Tcl_Obj *p;
  SqliteDb *pDb = (SqliteDb*)clientData;
  Tcl_Interp *interp = pDb->interp;
  FUNC10(pDb->pWalHook);

  FUNC10( db==pDb->db );
  p = FUNC2(pDb->pWalHook);
  FUNC6(p);
  FUNC7(interp, p, FUNC9(zDb, -1));
  FUNC7(interp, p, FUNC8(nEntry));
  if( TCL_OK!=FUNC3(interp, p, 0)
   || TCL_OK!=FUNC4(interp, FUNC5(interp), &ret)
  ){
    FUNC0(interp);
  }
  FUNC1(p);

  return ret;
}