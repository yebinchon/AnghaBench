#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_21__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  x86Op ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_25__ {TYPE_1__* J; } ;
struct TYPE_24__ {int op2; int /*<<< orphan*/  t; int /*<<< orphan*/  op1; } ;
struct TYPE_23__ {int /*<<< orphan*/  r; } ;
struct TYPE_22__ {int /*<<< orphan*/ * k32; int /*<<< orphan*/ * k64; } ;
typedef  int /*<<< orphan*/  RegSet ;
typedef  int Reg ;
typedef  int /*<<< orphan*/  MCLabel ;
typedef  scalar_t__ IRType ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_2__ IRIns ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  CC_NS ; 
 int FORCE_REX ; 
 TYPE_21__* FUNC0 (int /*<<< orphan*/ ) ; 
 int IRCONV_SEXT ; 
 int IRCONV_SRCMASK ; 
 scalar_t__ IRT_FLOAT ; 
 scalar_t__ IRT_I16 ; 
 scalar_t__ IRT_I64 ; 
 scalar_t__ IRT_I8 ; 
 scalar_t__ IRT_NUM ; 
 scalar_t__ IRT_P64 ; 
 scalar_t__ IRT_U16 ; 
 scalar_t__ IRT_U32 ; 
 scalar_t__ IRT_U64 ; 
 scalar_t__ IRT_U8 ; 
 scalar_t__ LJ_32 ; 
 scalar_t__ LJ_64 ; 
 size_t LJ_K32_M2P64_31 ; 
 size_t LJ_K64_2P64 ; 
 size_t LJ_K64_M2P64_31 ; 
 size_t LJ_K64_TOBIT ; 
 int REX_64 ; 
 int RID_MRM ; 
 int /*<<< orphan*/  RSET_FPR ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  RSET_GPR8 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XO_ADDSD ; 
 int /*<<< orphan*/  XO_ADDSS ; 
 int /*<<< orphan*/  XO_CVTSD2SS ; 
 int /*<<< orphan*/  XO_CVTSI2SD ; 
 int /*<<< orphan*/  XO_CVTSI2SS ; 
 int /*<<< orphan*/  XO_CVTSS2SD ; 
 int /*<<< orphan*/  XO_CVTTSD2SI ; 
 int /*<<< orphan*/  XO_CVTTSS2SI ; 
 int /*<<< orphan*/  XO_MOV ; 
 int /*<<< orphan*/  XO_MOVD ; 
 int /*<<< orphan*/  XO_MOVSD ; 
 int /*<<< orphan*/  XO_MOVSXb ; 
 int /*<<< orphan*/  XO_MOVSXd ; 
 int /*<<< orphan*/  XO_MOVSXw ; 
 int /*<<< orphan*/  XO_MOVZXb ; 
 int /*<<< orphan*/  XO_MOVZXw ; 
 int /*<<< orphan*/  XO_SUBSD ; 
 int /*<<< orphan*/  XO_TEST ; 
 int /*<<< orphan*/  XO_XORPS ; 
 int /*<<< orphan*/  XOg_ADD ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int FUNC22 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int FUNC26 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC29(ASMState *as, IRIns *ir)
{
  IRType st = (IRType)(ir->op2 & IRCONV_SRCMASK);
  int st64 = (st == IRT_I64 || st == IRT_U64 || (LJ_64 && st == IRT_P64));
  int stfp = (st == IRT_NUM || st == IRT_FLOAT);
  IRRef lref = ir->op1;
  FUNC21(FUNC20(ir->t) != st);
  FUNC21(!(LJ_32 && (FUNC16(ir->t) || st64)));  /* Handled by SPLIT. */
  if (FUNC13(ir->t)) {
    Reg dest = FUNC23(as, ir, RSET_FPR);
    if (stfp) {  /* FP to FP conversion. */
      Reg left = FUNC2(as, lref, RSET_FPR);
      FUNC7(as, st == IRT_NUM ? XO_CVTSD2SS : XO_CVTSS2SD, dest, left);
      if (left == dest) return;  /* Avoid the XO_XORPS. */
    } else if (LJ_32 && st == IRT_U32) {  /* U32 to FP conversion on x86. */
      /* number = (2^52+2^51 .. u32) - (2^52+2^51) */
      cTValue *k = &as->J->k64[LJ_K64_TOBIT];
      Reg bias = FUNC26(as, FUNC27(RSET_FPR, dest));
      if (FUNC12(ir->t))
	FUNC9(as, XO_CVTSD2SS, dest, dest);
      FUNC9(as, XO_SUBSD, dest, bias);  /* Subtract 2^52+2^51 bias. */
      FUNC9(as, XO_XORPS, dest, bias);  /* Merge bias and integer. */
      FUNC8(as, XO_MOVSD, bias, k);
      FUNC7(as, XO_MOVD, dest, FUNC2(as, lref, RSET_GPR));
      return;
    } else {  /* Integer to FP conversion. */
      Reg left = (LJ_64 && (st == IRT_U32 || st == IRT_U64)) ?
		 FUNC22(as, lref, RSET_GPR) :
		 FUNC3(as, lref, RSET_GPR, st64);
      if (LJ_64 && st == IRT_U64) {
	MCLabel l_end = FUNC6(as);
	cTValue *k = &as->J->k64[LJ_K64_2P64];
	FUNC8(as, XO_ADDSD, dest, k);  /* Add 2^64 to compensate. */
	FUNC10(as, CC_NS, l_end);
	FUNC9(as, XO_TEST, left|REX_64, left);  /* Check if u64 >= 2^63. */
      }
      FUNC7(as, FUNC17(ir->t) ? XO_CVTSI2SD : XO_CVTSI2SS,
	       dest|((LJ_64 && (st64 || st == IRT_U32)) ? REX_64 : 0), left);
    }
    FUNC9(as, XO_XORPS, dest, dest);  /* Avoid partial register stall. */
  } else if (stfp) {  /* FP to integer conversion. */
    if (FUNC14(ir->t)) {
      /* Checked conversions are only supported from number to int. */
      FUNC21(FUNC15(ir->t) && st == IRT_NUM);
      FUNC4(as, ir, FUNC22(as, lref, RSET_FPR));
    } else {
      Reg dest = FUNC23(as, ir, RSET_GPR);
      x86Op op = st == IRT_NUM ? XO_CVTTSD2SI : XO_CVTTSS2SI;
      if (LJ_64 ? FUNC19(ir->t) : FUNC18(ir->t)) {
	/* LJ_64: For inputs >= 2^63 add -2^64, convert again. */
	/* LJ_32: For inputs >= 2^31 add -2^31, convert again and add 2^31. */
	Reg tmp = FUNC25(FUNC0(lref)->r) ? FUNC22(as, lref, RSET_FPR) :
					  FUNC26(as, RSET_FPR);
	MCLabel l_end = FUNC6(as);
	if (LJ_32)
	  FUNC5(as, FUNC1(XOg_ADD), dest, (int32_t)0x80000000);
	FUNC9(as, op, dest|REX_64, tmp);
	if (st == IRT_NUM)
	  FUNC8(as, XO_ADDSD, tmp, &as->J->k64[LJ_K64_M2P64_31]);
	else
	  FUNC8(as, XO_ADDSS, tmp, &as->J->k32[LJ_K32_M2P64_31]);
	FUNC10(as, CC_NS, l_end);
	FUNC9(as, XO_TEST, dest|REX_64, dest);  /* Check if dest negative. */
	FUNC9(as, op, dest|REX_64, tmp);
	FUNC24(as, tmp, lref);
      } else {
	if (LJ_64 && FUNC18(ir->t))
	  FUNC9(as, XO_MOV, dest, dest);  /* Zero hiword. */
	FUNC7(as, op,
		 dest|((LJ_64 &&
			(FUNC11(ir->t) || FUNC18(ir->t))) ? REX_64 : 0),
		 FUNC2(as, lref, RSET_FPR));
      }
    }
  } else if (st >= IRT_I8 && st <= IRT_U16) {  /* Extend to 32 bit integer. */
    Reg left, dest = FUNC23(as, ir, RSET_GPR);
    RegSet allow = RSET_GPR;
    x86Op op;
    FUNC21(FUNC15(ir->t) || FUNC18(ir->t));
    if (st == IRT_I8) {
      op = XO_MOVSXb; allow = RSET_GPR8; dest |= FORCE_REX;
    } else if (st == IRT_U8) {
      op = XO_MOVZXb; allow = RSET_GPR8; dest |= FORCE_REX;
    } else if (st == IRT_I16) {
      op = XO_MOVSXw;
    } else {
      op = XO_MOVZXw;
    }
    left = FUNC2(as, lref, allow);
    /* Add extra MOV if source is already in wrong register. */
    if (!LJ_64 && left != RID_MRM && !FUNC28(allow, left)) {
      Reg tmp = FUNC26(as, allow);
      FUNC9(as, op, dest, tmp);
      FUNC9(as, XO_MOV, tmp, left);
    } else {
      FUNC7(as, op, dest, left);
    }
  } else {  /* 32/64 bit integer conversions. */
    if (LJ_32) {  /* Only need to handle 32/32 bit no-op (cast) on x86. */
      Reg dest = FUNC23(as, ir, RSET_GPR);
      FUNC24(as, dest, lref);  /* Do nothing, but may need to move regs. */
    } else if (FUNC11(ir->t)) {
      Reg dest = FUNC23(as, ir, RSET_GPR);
      if (st64 || !(ir->op2 & IRCONV_SEXT)) {
	/* 64/64 bit no-op (cast) or 32 to 64 bit zero extension. */
	FUNC24(as, dest, lref);  /* Do nothing, but may need to move regs. */
      } else {  /* 32 to 64 bit sign extension. */
	Reg left = FUNC2(as, lref, RSET_GPR);
	FUNC7(as, XO_MOVSXd, dest|REX_64, left);
      }
    } else {
      Reg dest = FUNC23(as, ir, RSET_GPR);
      if (st64) {
	Reg left = FUNC2(as, lref, RSET_GPR);
	/* This is either a 32 bit reg/reg mov which zeroes the hiword
	** or a load of the loword from a 64 bit address.
	*/
	FUNC7(as, XO_MOV, dest, left);
      } else {  /* 32/32 bit no-op (cast). */
	FUNC24(as, dest, lref);  /* Do nothing, but may need to move regs. */
      }
    }
  }
}