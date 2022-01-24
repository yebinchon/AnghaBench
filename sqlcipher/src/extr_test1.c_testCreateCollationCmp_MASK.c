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
struct TYPE_2__ {int /*<<< orphan*/  interp; int /*<<< orphan*/  pCmp; } ;
typedef  TYPE_1__ TestCollationX ;
typedef  int /*<<< orphan*/  Tcl_Obj ;

/* Variables and functions */
 int TCL_EVAL_DIRECT ; 
 int TCL_EVAL_GLOBAL ; 
 scalar_t__ TCL_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static int FUNC9(
  void *pCtx,
  int nLeft,
  const void *zLeft,
  int nRight,
  const void *zRight
){
  TestCollationX *p = (TestCollationX *)pCtx;
  Tcl_Obj *pScript = FUNC2(p->pCmp);
  int iRes = 0;

  FUNC6(pScript);
  FUNC7(0, pScript, FUNC8((char *)zLeft, nLeft));
  FUNC7(0, pScript, FUNC8((char *)zRight,nRight));

  if( TCL_OK!=FUNC3(p->interp, pScript, TCL_EVAL_DIRECT|TCL_EVAL_GLOBAL)
   || TCL_OK!=FUNC4(p->interp, FUNC5(p->interp), &iRes)
  ){
    FUNC0(p->interp);
  }
  FUNC1(pScript);

  return iRes;
}