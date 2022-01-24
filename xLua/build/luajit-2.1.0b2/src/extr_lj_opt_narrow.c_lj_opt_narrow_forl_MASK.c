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
typedef  scalar_t__ lua_Number ;
typedef  int /*<<< orphan*/  jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
typedef  int /*<<< orphan*/  IRType ;

/* Variables and functions */
 size_t FORL_IDX ; 
 size_t FORL_STEP ; 
 size_t FORL_STOP ; 
 int /*<<< orphan*/  IRT_INT ; 
 int /*<<< orphan*/  IRT_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

IRType FUNC4(jit_State *J, cTValue *tv)
{
  FUNC0(FUNC3(&tv[FORL_IDX]) &&
	     FUNC3(&tv[FORL_STOP]) &&
	     FUNC3(&tv[FORL_STEP]));
  /* Narrow only if the runtime values of start/stop/step are all integers. */
  if (FUNC1(J, &tv[FORL_IDX]) &&
      FUNC1(J, &tv[FORL_STOP]) &&
      FUNC1(J, &tv[FORL_STEP])) {
    /* And if the loop index can't possibly overflow. */
    lua_Number step = FUNC2(&tv[FORL_STEP]);
    lua_Number sum = FUNC2(&tv[FORL_STOP]) + step;
    if (0 <= step ? (sum <= 2147483647.0) : (sum >= -2147483648.0))
      return IRT_INT;
  }
  return IRT_NUM;
}