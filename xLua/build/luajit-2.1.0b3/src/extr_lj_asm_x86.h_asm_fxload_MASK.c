#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86Op ;
struct TYPE_5__ {scalar_t__ o; int /*<<< orphan*/  t; int /*<<< orphan*/  op1; } ;
typedef  int /*<<< orphan*/  Reg ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
#define  IRT_FLOAT 133 
#define  IRT_I16 132 
#define  IRT_I8 131 
#define  IRT_NUM 130 
#define  IRT_U16 129 
#define  IRT_U8 128 
 scalar_t__ IR_FLOAD ; 
 int /*<<< orphan*/  LJ_64 ; 
 int /*<<< orphan*/  REX_64 ; 
 int /*<<< orphan*/  RID_MRM ; 
 int /*<<< orphan*/  RSET_FPR ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  XO_MOV ; 
 int /*<<< orphan*/  XO_MOVSD ; 
 int /*<<< orphan*/  XO_MOVSS ; 
 int /*<<< orphan*/  XO_MOVSXb ; 
 int /*<<< orphan*/  XO_MOVSXw ; 
 int /*<<< orphan*/  XO_MOVZXb ; 
 int /*<<< orphan*/  XO_MOVZXw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(ASMState *as, IRIns *ir)
{
  Reg dest = FUNC10(as, ir, FUNC5(ir->t) ? RSET_FPR : RSET_GPR);
  x86Op xo;
  if (ir->o == IR_FLOAD)
    FUNC0(as, ir, RSET_GPR);
  else
    FUNC1(as, ir->op1, RSET_GPR);
  /* ir->op2 is ignored -- unaligned loads are ok on x86. */
  switch (FUNC8(ir->t)) {
  case IRT_I8: xo = XO_MOVSXb; break;
  case IRT_U8: xo = XO_MOVZXb; break;
  case IRT_I16: xo = XO_MOVSXw; break;
  case IRT_U16: xo = XO_MOVZXw; break;
  case IRT_NUM: xo = XO_MOVSD; break;
  case IRT_FLOAT: xo = XO_MOVSS; break;
  default:
    if (LJ_64 && FUNC3(ir->t))
      dest |= REX_64;
    else
      FUNC9(FUNC6(ir->t) || FUNC7(ir->t) || FUNC4(ir->t));
    xo = XO_MOV;
    break;
  }
  FUNC2(as, xo, dest, RID_MRM);
}