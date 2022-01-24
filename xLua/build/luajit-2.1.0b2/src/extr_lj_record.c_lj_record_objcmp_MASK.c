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
typedef  int /*<<< orphan*/  jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
typedef  int /*<<< orphan*/  TRef ;
typedef  scalar_t__ IRType ;

/* Variables and functions */
 int /*<<< orphan*/  IRCONV_NUM_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ IRT_INT ; 
 scalar_t__ IRT_NUM ; 
 int /*<<< orphan*/  IR_CONV ; 
 int /*<<< orphan*/  IR_EQ ; 
 int /*<<< orphan*/  IR_NE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(jit_State *J, TRef a, TRef b, cTValue *av, cTValue *bv)
{
  int diff = !FUNC3(av, bv);
  if (!FUNC5(a, b)) {  /* Shortcut, also handles primitives. */
    IRType ta = FUNC4(a) ? IRT_INT : FUNC6(a);
    IRType tb = FUNC4(b) ? IRT_INT : FUNC6(b);
    if (ta != tb) {
      /* Widen mixed number/int comparisons to number/number comparison. */
      if (ta == IRT_INT && tb == IRT_NUM) {
	a = FUNC2(FUNC1(IR_CONV), a, IRCONV_NUM_INT);
	ta = IRT_NUM;
      } else if (ta == IRT_NUM && tb == IRT_INT) {
	b = FUNC2(FUNC1(IR_CONV), b, IRCONV_NUM_INT);
      } else {
	return 2;  /* Two different types are never equal. */
      }
    }
    FUNC2(FUNC0(diff ? IR_NE : IR_EQ, ta), a, b);
  }
  return diff;
}