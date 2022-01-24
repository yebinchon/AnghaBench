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
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TRef ;
typedef  scalar_t__ IROp ;

/* Variables and functions */
 int /*<<< orphan*/  IRCONV_NUM_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ IR_ADD ; 
 scalar_t__ IR_ADDOV ; 
 scalar_t__ IR_CONV ; 
 scalar_t__ IR_MUL ; 
 scalar_t__ IR_SUB ; 
 scalar_t__ LJ_DUALNUM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

TRef FUNC9(jit_State *J, TRef rb, TRef rc,
			 TValue *vb, TValue *vc, IROp op)
{
  rb = FUNC2(J, rb, vb);
  rc = FUNC2(J, rc, vc);
  /* Must not narrow MUL in non-DUALNUM variant, because it loses -0. */
  if ((op >= IR_ADD && op <= (LJ_DUALNUM ? IR_MUL : IR_SUB)) &&
      FUNC7(rb) && FUNC7(rc) &&
      FUNC6(FUNC4(FUNC5(vb), FUNC5(vc),
			       (int)op - (int)IR_ADD)))
    return FUNC3(FUNC0((int)op - (int)IR_ADD + (int)IR_ADDOV), rb, rc);
  if (!FUNC8(rb)) rb = FUNC3(FUNC1(IR_CONV), rb, IRCONV_NUM_INT);
  if (!FUNC8(rc)) rc = FUNC3(FUNC1(IR_CONV), rc, IRCONV_NUM_INT);
  return FUNC3(FUNC1(op), rb, rc);
}