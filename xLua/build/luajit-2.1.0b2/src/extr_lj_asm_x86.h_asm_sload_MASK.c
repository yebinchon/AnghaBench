#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_16__ {scalar_t__ irt; } ;
struct TYPE_17__ {int op2; TYPE_1__ t; scalar_t__ op1; } ;
typedef  int /*<<< orphan*/  RegSet ;
typedef  int Reg ;
typedef  TYPE_1__ IRType1 ;
typedef  TYPE_2__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  CC_AE ; 
 int /*<<< orphan*/  CC_NE ; 
 int IRSLOAD_CONVERT ; 
 int IRSLOAD_FRAME ; 
 int IRSLOAD_PARENT ; 
 int IRSLOAD_TYPECHECK ; 
 scalar_t__ IRT_INT ; 
 scalar_t__ IRT_NUM ; 
 scalar_t__ LJ_64 ; 
 scalar_t__ LJ_DUALNUM ; 
 int /*<<< orphan*/  LJ_TISNUM ; 
 int /*<<< orphan*/  REF_BASE ; 
 int REX_64 ; 
 int /*<<< orphan*/  RSET_FPR ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  XO_ARITHi ; 
 int /*<<< orphan*/  XO_ARITHi8 ; 
 int /*<<< orphan*/  XO_CVTSI2SD ; 
 int /*<<< orphan*/  XO_CVTTSD2SI ; 
 int /*<<< orphan*/  XO_MOV ; 
 int /*<<< orphan*/  XO_MOVSD ; 
 int XOg_CMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__) ; 
 scalar_t__ FUNC7 (TYPE_1__) ; 
 scalar_t__ FUNC8 (TYPE_1__) ; 
 scalar_t__ FUNC9 (TYPE_1__) ; 
 scalar_t__ FUNC10 (TYPE_1__) ; 
 scalar_t__ FUNC11 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__) ; 
 scalar_t__ FUNC13 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC20(ASMState *as, IRIns *ir)
{
  int32_t ofs = 8*((int32_t)ir->op1-1) + ((ir->op2 & IRSLOAD_FRAME) ? 4 : 0);
  IRType1 t = ir->t;
  Reg base;
  FUNC14(!(ir->op2 & IRSLOAD_PARENT));  /* Handled by asm_head_side(). */
  FUNC14(FUNC7(t) || !(ir->op2 & IRSLOAD_TYPECHECK));
  FUNC14(LJ_DUALNUM ||
	     !FUNC8(t) || (ir->op2 & (IRSLOAD_CONVERT|IRSLOAD_FRAME)));
  if ((ir->op2 & IRSLOAD_CONVERT) && FUNC7(t) && FUNC8(t)) {
    Reg left = FUNC18(as, RSET_FPR);
    FUNC2(as, ir, left);  /* Frees dest reg. Do this before base alloc. */
    base = FUNC15(as, REF_BASE, RSET_GPR);
    FUNC4(as, XO_MOVSD, left, base, ofs);
    t.irt = IRT_NUM;  /* Continue with a regular number type check. */
#if LJ_64
  } else if (irt_islightud(t)) {
    Reg dest = asm_load_lightud64(as, ir, (ir->op2 & IRSLOAD_TYPECHECK));
    if (ra_hasreg(dest)) {
      base = ra_alloc1(as, REF_BASE, RSET_GPR);
      emit_rmro(as, XO_MOV, dest|REX_64, base, ofs);
    }
    return;
#endif
  } else if (FUNC19(ir)) {
    RegSet allow = FUNC11(t) ? RSET_FPR : RSET_GPR;
    Reg dest = FUNC16(as, ir, allow);
    base = FUNC15(as, REF_BASE, RSET_GPR);
    FUNC14(FUNC11(t) || FUNC8(t) || FUNC6(t));
    if ((ir->op2 & IRSLOAD_CONVERT)) {
      t.irt = FUNC8(t) ? IRT_NUM : IRT_INT;  /* Check for original type. */
      FUNC4(as, FUNC8(t) ? XO_CVTSI2SD : XO_CVTTSD2SI, dest, base, ofs);
    } else {
      FUNC4(as, FUNC11(t) ? XO_MOVSD : XO_MOV, dest, base, ofs);
    }
  } else {
    if (!(ir->op2 & IRSLOAD_TYPECHECK))
      return;  /* No type check: avoid base alloc. */
    base = FUNC15(as, REF_BASE, RSET_GPR);
  }
  if ((ir->op2 & IRSLOAD_TYPECHECK)) {
    /* Need type check, even if the load result is unused. */
    FUNC0(as, FUNC11(t) ? CC_AE : CC_NE);
    if (LJ_64 && FUNC13(t) >= IRT_NUM) {
      FUNC14(FUNC9(t) || FUNC11(t));
      FUNC5(as, LJ_TISNUM);
      FUNC4(as, XO_ARITHi, XOg_CMP, base, ofs+4);
    } else {
      FUNC3(as, FUNC12(t));
      FUNC4(as, XO_ARITHi8, XOg_CMP, base, ofs+4);
    }
  }
}