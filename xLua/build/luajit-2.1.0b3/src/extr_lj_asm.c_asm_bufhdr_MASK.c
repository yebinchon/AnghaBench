#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int op2; scalar_t__ o; int /*<<< orphan*/  op1; int /*<<< orphan*/  r; } ;
typedef  int /*<<< orphan*/  Reg ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int IRBUFHDR_APPEND ; 
 scalar_t__ IR_BUFHDR ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  SBuf ; 
 int /*<<< orphan*/  b ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(ASMState *as, IRIns *ir)
{
  Reg sb = FUNC6(as, ir, RSET_GPR);
  if ((ir->op2 & IRBUFHDR_APPEND)) {
    /* Rematerialize const buffer pointer instead of likely spill. */
    IRIns *irp = FUNC0(ir->op1);
    if (!(FUNC7(irp->r) || irp == ir-1 ||
	  (irp == ir-2 && !FUNC11(ir-1)))) {
      while (!(irp->o == IR_BUFHDR && !(irp->op2 & IRBUFHDR_APPEND)))
	irp = FUNC0(irp->op1);
      if (FUNC3(irp->op1)) {
	FUNC12(as, FUNC5(as, ir->op1, RSET_GPR));
	ir = irp;
      }
    }
  } else {
    Reg tmp = FUNC10(as, FUNC13(RSET_GPR, sb));
    /* Passing ir isn't strictly correct, but it's an IRT_PGC, too. */
    FUNC2(as, ir, tmp, sb, FUNC4(SBuf, p));
    FUNC1(as, ir, tmp, sb, FUNC4(SBuf, b));
  }
#if LJ_TARGET_X86ORX64
  ra_left(as, sb, ir->op1);
#else
  FUNC9(as, sb, ir->op1);
#endif
}