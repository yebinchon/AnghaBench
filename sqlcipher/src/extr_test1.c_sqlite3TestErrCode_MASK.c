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
typedef  int /*<<< orphan*/  zBuf ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  Tcl_Interp ;

/* Variables and functions */
 int SQLITE_MISUSE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(Tcl_Interp *interp, sqlite3 *db, int rc){
  if( FUNC4()==0 && rc!=SQLITE_MISUSE && rc!=SQLITE_OK
   && FUNC2(db)!=rc ){
    char zBuf[200];
    int r2 = FUNC2(db);
    FUNC3(sizeof(zBuf), zBuf,
       "error code %s (%d) does not match sqlite3_errcode %s (%d)",
       FUNC5(rc), rc, FUNC5(r2), r2);
    FUNC1(interp);
    FUNC0(interp, zBuf, 0);
    return 1;
  }
  return 0;
}