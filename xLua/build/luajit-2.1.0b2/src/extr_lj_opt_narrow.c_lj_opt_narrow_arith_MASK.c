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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  IRT_NUM ; 
 scalar_t__ IR_ADD ; 
 scalar_t__ IR_ADDOV ; 
 scalar_t__ IR_CONV ; 
 scalar_t__ IR_MUL ; 
 int /*<<< orphan*/  IR_STRTO ; 
 scalar_t__ IR_SUB ; 
 scalar_t__ LJ_DUALNUM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

TRef FUNC12(jit_State *J, TRef rb, TRef rc,
			 TValue *vb, TValue *vc, IROp op)
{
  if (FUNC11(rb)) {
    rb = FUNC3(FUNC0(IR_STRTO, IRT_NUM), rb, 0);
    FUNC4(FUNC8(vb), vb);
  }
  if (FUNC11(rc)) {
    rc = FUNC3(FUNC0(IR_STRTO, IRT_NUM), rc, 0);
    FUNC4(FUNC8(vc), vc);
  }
  /* Must not narrow MUL in non-DUALNUM variant, because it loses -0. */
  if ((op >= IR_ADD && op <= (LJ_DUALNUM ? IR_MUL : IR_SUB)) &&
      FUNC9(rb) && FUNC9(rc) &&
      FUNC7(FUNC5(FUNC6(vb), FUNC6(vc),
			       (int)op - (int)IR_ADD)))
    return FUNC3(FUNC1((int)op - (int)IR_ADD + (int)IR_ADDOV), rb, rc);
  if (!FUNC10(rb)) rb = FUNC3(FUNC2(IR_CONV), rb, IRCONV_NUM_INT);
  if (!FUNC10(rc)) rc = FUNC3(FUNC2(IR_CONV), rc, IRCONV_NUM_INT);
  return FUNC3(FUNC2(op), rb, rc);
}