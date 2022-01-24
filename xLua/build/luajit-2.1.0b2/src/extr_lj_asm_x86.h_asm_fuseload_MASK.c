#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  int int32_t ;
struct TYPE_20__ {int ofs; void* idx; void* base; } ;
struct TYPE_22__ {int freeset; int modset; TYPE_1__ mrm; } ;
struct TYPE_21__ {scalar_t__ o; int op2; int /*<<< orphan*/  s; scalar_t__ op1; int /*<<< orphan*/  t; int /*<<< orphan*/  r; } ;
typedef  int RegSet ;
typedef  int /*<<< orphan*/  Reg ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_2__ IRIns ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IRDELTA_L2S ; 
 int IRSLOAD_CONVERT ; 
 int IRSLOAD_FRAME ; 
 int IRSLOAD_PARENT ; 
 int /*<<< orphan*/  IRT_I8 ; 
 int /*<<< orphan*/  IRT_U16 ; 
 scalar_t__ IR_ALOAD ; 
 scalar_t__ IR_FLOAD ; 
 scalar_t__ IR_FSTORE ; 
 scalar_t__ IR_HLOAD ; 
 scalar_t__ IR_KINT64 ; 
 scalar_t__ IR_KNUM ; 
 scalar_t__ IR_RETF ; 
 scalar_t__ IR_SLOAD ; 
 scalar_t__ IR_ULOAD ; 
 scalar_t__ IR_VLOAD ; 
 scalar_t__ IR_XLOAD ; 
 scalar_t__ IR_XSTORE ; 
 int /*<<< orphan*/  REF_BASE ; 
 void* RID_ESP ; 
 int /*<<< orphan*/  RID_MRM ; 
 void* RID_NONE ; 
 int RSET_EMPTY ; 
 int RSET_FPR ; 
 int RSET_GPR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC21 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static Reg FUNC22(ASMState *as, IRRef ref, RegSet allow)
{
  IRIns *ir = FUNC0(ref);
  if (FUNC18(ir->r)) {
    if (allow != RSET_EMPTY) {  /* Fast path. */
      FUNC20(as, ir->r);
      return ir->r;
    }
  fusespill:
    /* Force a spill if only memory operands are allowed (asm_x87load). */
    as->mrm.base = RID_ESP;
    as->mrm.ofs = FUNC21(as, ir);
    as->mrm.idx = RID_NONE;
    return RID_MRM;
  }
  if (ir->o == IR_KNUM) {
    RegSet avail = as->freeset & ~as->modset & RSET_FPR;
    FUNC12(allow != RSET_EMPTY);
    if (!(avail & (avail-1))) {  /* Fuse if less than two regs available. */
      as->mrm.ofs = FUNC15(FUNC5(ir));
      as->mrm.base = as->mrm.idx = RID_NONE;
      return RID_MRM;
    }
  } else if (ir->o == IR_KINT64) {
    RegSet avail = as->freeset & ~as->modset & RSET_GPR;
    FUNC12(allow != RSET_EMPTY);
    if (!(avail & (avail-1))) {  /* Fuse if less than two regs available. */
      as->mrm.ofs = FUNC15(FUNC4(ir));
      as->mrm.base = as->mrm.idx = RID_NONE;
      return RID_MRM;
    }
  } else if (FUNC13(as, ref)) {
    RegSet xallow = (allow & RSET_GPR) ? allow : RSET_GPR;
    if (ir->o == IR_SLOAD) {
      if (!(ir->op2 & (IRSLOAD_PARENT|IRSLOAD_CONVERT)) &&
	  FUNC14(as, ref, IR_RETF, 0)) {
	as->mrm.base = (uint8_t)FUNC16(as, REF_BASE, xallow);
	as->mrm.ofs = 8*((int32_t)ir->op1-1) + ((ir->op2&IRSLOAD_FRAME)?4:0);
	as->mrm.idx = RID_NONE;
	return RID_MRM;
      }
    } else if (ir->o == IR_FLOAD) {
      /* Generic fusion is only ok for 32 bit operand (but see asm_comp). */
      if ((FUNC8(ir->t) || FUNC9(ir->t) || FUNC7(ir->t)) &&
	  FUNC14(as, ref, IR_FSTORE, 0)) {
	FUNC2(as, ir, xallow);
	return RID_MRM;
      }
    } else if (ir->o == IR_ALOAD || ir->o == IR_HLOAD || ir->o == IR_ULOAD) {
      if (FUNC14(as, ref, ir->o + IRDELTA_L2S, 0)) {
	FUNC1(as, ir->op1, xallow);
	return RID_MRM;
      }
    } else if (ir->o == IR_XLOAD) {
      /* Generic fusion is not ok for 8/16 bit operands (but see asm_comp).
      ** Fusing unaligned memory operands is ok on x86 (except for SIMD types).
      */
      if ((!FUNC10(ir->t, IRT_I8, IRT_U16)) &&
	  FUNC14(as, ref, IR_XSTORE, 0)) {
	FUNC3(as, ir->op1, xallow);
	return RID_MRM;
      }
    } else if (ir->o == IR_VLOAD) {
      FUNC1(as, ir->op1, xallow);
      return RID_MRM;
    }
  }
  if (!(as->freeset & allow) && !FUNC6(ref) &&
      (allow == RSET_EMPTY || FUNC19(ir->s) || FUNC11(as, ref)))
    goto fusespill;
  return FUNC17(as, ref, allow);
}