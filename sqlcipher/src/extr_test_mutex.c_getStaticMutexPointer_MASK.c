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
typedef  int /*<<< orphan*/  sqlite3_mutex ;
typedef  int /*<<< orphan*/  Tcl_Obj ;
typedef  int /*<<< orphan*/  Tcl_Interp ;

/* Variables and functions */
 int SQLITE_MUTEX_FAST ; 
 int SQLITE_MUTEX_RECURSIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  aName ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

__attribute__((used)) static sqlite3_mutex *FUNC3(
  Tcl_Interp *pInterp,
  Tcl_Obj *pObj
){
  int iMutex;
  if( FUNC0(pInterp, pObj, aName, "mutex name", 0, &iMutex) ){
    return 0;
  }
  FUNC1( iMutex!=SQLITE_MUTEX_FAST && iMutex!=SQLITE_MUTEX_RECURSIVE );
  return FUNC2(iMutex);
}