#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ x86Shift ;
typedef  scalar_t__ x86Op ;
struct TYPE_21__ {int flags; } ;
struct TYPE_20__ {int i; scalar_t__ r; int /*<<< orphan*/  op1; int /*<<< orphan*/  t; int /*<<< orphan*/  op2; } ;
typedef  scalar_t__ Reg ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int JIT_F_BMI2 ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ RID_ECX ; 
 int /*<<< orphan*/  RSET_GPR ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  XO_MOV ; 
 int /*<<< orphan*/  XO_SHIFT1 ; 
 int /*<<< orphan*/  XO_SHIFTcl ; 
 scalar_t__ XOg_ROL ; 
 scalar_t__ XV_RORX ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC19(ASMState *as, IRIns *ir, x86Shift xs, x86Op xv)
{
  IRRef rref = ir->op2;
  IRIns *irr = FUNC0(rref);
  Reg dest;
  if (FUNC9(rref)) {  /* Constant shifts. */
    int shift;
    dest = FUNC13(as, ir, RSET_GPR);
    shift = irr->i & (FUNC10(ir->t) ? 63 : 31);
    if (!xv && shift && (as->flags & JIT_F_BMI2)) {
      Reg left = FUNC4(as, ir->op1, RSET_GPR, FUNC10(ir->t));
      if (left != dest) {  /* BMI2 rotate right by constant. */
	FUNC5(as, xs == XOg_ROL ? -shift : shift);
	FUNC6(as, FUNC3(ir, XV_RORX), dest, left);
	return;
      }
    }
    switch (shift) {
    case 0: break;
    case 1: FUNC7(as, XO_SHIFT1, FUNC1(ir, xs), dest); break;
    default: FUNC8(as, FUNC1(ir, xs), dest, shift); break;
    }
  } else if ((as->flags & JIT_F_BMI2) && xv) {	/* BMI2 variable shifts. */
    Reg left, right;
    dest = FUNC13(as, ir, RSET_GPR);
    right = FUNC11(as, rref, RSET_GPR);
    left = FUNC4(as, ir->op1, FUNC18(RSET_GPR, right),
			 FUNC10(ir->t));
    FUNC6(as, FUNC3(ir, xv) ^ (right << 19), dest, left);
    return;
  } else {  /* Variable shifts implicitly use register cl (i.e. ecx). */
    Reg right;
    dest = FUNC13(as, ir, FUNC18(RSET_GPR, RID_ECX));
    if (dest == RID_ECX) {
      dest = FUNC17(as, FUNC18(RSET_GPR, RID_ECX));
      FUNC7(as, XO_MOV, RID_ECX, dest);
    }
    right = irr->r;
    if (FUNC15(right))
      right = FUNC12(as, rref, FUNC2(RID_ECX));
    else if (right != RID_ECX)
      FUNC17(as, FUNC2(RID_ECX));
    FUNC7(as, XO_SHIFTcl, FUNC1(ir, xs), dest);
    FUNC16(as, right);
    if (right != RID_ECX)
      FUNC7(as, XO_MOV, RID_ECX, right);
  }
  FUNC14(as, dest, ir->op1);
  /*
  ** Note: avoid using the flags resulting from a shift or rotate!
  ** All of them cause a partial flag stall, except for r,1 shifts
  ** (but not rotates). And a shift count of 0 leaves the flags unmodified.
  */
}