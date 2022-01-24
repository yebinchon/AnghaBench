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
typedef  int /*<<< orphan*/  Tcl_Obj ;
struct TYPE_2__ {int /*<<< orphan*/  pInterp; int /*<<< orphan*/  pObj; } ;

/* Variables and functions */
 int TCL_EVAL_DIRECT ; 
 int TCL_EVAL_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 TYPE_1__ logcallback ; 
 char* FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(void *unused, int err, char *zMsg){
  Tcl_Obj *pNew = FUNC1(logcallback.pObj);
  FUNC3(pNew);
  FUNC4(
      0, pNew, FUNC5(FUNC6(err), -1)
  );
  FUNC4(0, pNew, FUNC5(zMsg, -1));
  FUNC2(logcallback.pInterp, pNew, TCL_EVAL_GLOBAL|TCL_EVAL_DIRECT);
  FUNC0(pNew);
}