#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86Shift ;
struct TYPE_6__ {int i; scalar_t__ r; int /*<<< orphan*/  op1; int /*<<< orphan*/  t; int /*<<< orphan*/  op2; } ;
typedef  scalar_t__ Reg ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ RID_ECX ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  XO_MOV ; 
 int /*<<< orphan*/  XO_SHIFT1 ; 
 int /*<<< orphan*/  XO_SHIFTcl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC14(ASMState *as, IRIns *ir, x86Shift xs)
{
  IRRef rref = ir->op2;
  IRIns *irr = FUNC0(rref);
  Reg dest;
  if (FUNC5(rref)) {  /* Constant shifts. */
    int shift;
    dest = FUNC8(as, ir, RSET_GPR);
    shift = irr->i & (FUNC6(ir->t) ? 63 : 31);
    switch (shift) {
    case 0: break;
    case 1: FUNC3(as, XO_SHIFT1, FUNC1(ir, xs), dest); break;
    default: FUNC4(as, FUNC1(ir, xs), dest, shift); break;
    }
  } else {  /* Variable shifts implicitly use register cl (i.e. ecx). */
    Reg right;
    dest = FUNC8(as, ir, FUNC13(RSET_GPR, RID_ECX));
    if (dest == RID_ECX) {
      dest = FUNC12(as, FUNC13(RSET_GPR, RID_ECX));
      FUNC3(as, XO_MOV, RID_ECX, dest);
    }
    right = irr->r;
    if (FUNC10(right))
      right = FUNC7(as, rref, FUNC2(RID_ECX));
    else if (right != RID_ECX)
      FUNC12(as, FUNC2(RID_ECX));
    FUNC3(as, XO_SHIFTcl, FUNC1(ir, xs), dest);
    FUNC11(as, right);
    if (right != RID_ECX)
      FUNC3(as, XO_MOV, RID_ECX, right);
  }
  FUNC9(as, dest, ir->op1);
  /*
  ** Note: avoid using the flags resulting from a shift or rotate!
  ** All of them cause a partial flag stall, except for r,1 shifts
  ** (but not rotates). And a shift count of 0 leaves the flags unmodified.
  */
}