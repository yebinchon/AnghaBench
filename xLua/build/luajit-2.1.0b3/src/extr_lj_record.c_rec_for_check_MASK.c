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
typedef  int /*<<< orphan*/  jit_State ;
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ i; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  scalar_t__ IRType ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ IRT_INT ; 
 int /*<<< orphan*/  IR_ADDOV ; 
 int /*<<< orphan*/  IR_GE ; 
 int /*<<< orphan*/  IR_LE ; 
 int /*<<< orphan*/  IR_LT ; 
 int /*<<< orphan*/  IR_USE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(jit_State *J, IRType t, int dir,
			  TRef stop, TRef step, int init)
{
  if (!FUNC7(step)) {
    /* Non-constant step: need a guard for the direction. */
    TRef zero = (t == IRT_INT) ? FUNC5(J, 0) : FUNC6(J);
    FUNC4(FUNC1(dir ? IR_GE : IR_LT, t), step, zero);
    /* Add hoistable overflow checks for a narrowed FORL index. */
    if (init && t == IRT_INT) {
      if (FUNC7(stop)) {
	/* Constant stop: optimize check away or to a range check for step. */
	int32_t k = FUNC0(FUNC8(stop))->i;
	if (dir) {
	  if (k > 0)
	    FUNC4(FUNC2(IR_LE), step, FUNC5(J, (int32_t)0x7fffffff-k));
	} else {
	  if (k < 0)
	    FUNC4(FUNC2(IR_GE), step, FUNC5(J, (int32_t)0x80000000-k));
	}
      } else {
	/* Stop+step variable: need full overflow check. */
	TRef tr = FUNC4(FUNC2(IR_ADDOV), step, stop);
	FUNC4(FUNC3(IR_USE), tr, 0);  /* ADDOV is weak. Avoid dead result. */
      }
    }
  } else if (init && t == IRT_INT && !FUNC7(stop)) {
    /* Constant step: optimize overflow check to a range check for stop. */
    int32_t k = FUNC0(FUNC8(step))->i;
    k = (int32_t)(dir ? 0x7fffffff : 0x80000000) - k;
    FUNC4(FUNC2(dir ? IR_LE : IR_GE), stop, FUNC5(J, k));
  }
}