#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int ofs; } ;
struct TYPE_18__ {TYPE_1__ mrm; } ;
struct TYPE_17__ {int /*<<< orphan*/  t; int /*<<< orphan*/  op1; } ;
typedef  int /*<<< orphan*/  RegSet ;
typedef  int Reg ;
typedef  TYPE_2__ IRIns ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  CC_AE ; 
 int /*<<< orphan*/  CC_NE ; 
 scalar_t__ IRT_NUM ; 
 scalar_t__ LJ_64 ; 
 scalar_t__ LJ_DUALNUM ; 
 int /*<<< orphan*/  LJ_TISNUM ; 
 int REX_64 ; 
 int RID_MAX_GPR ; 
 int /*<<< orphan*/  RID_MRM ; 
 int /*<<< orphan*/  RSET_FPR ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  XO_ARITHi ; 
 int /*<<< orphan*/  XO_ARITHi8 ; 
 int /*<<< orphan*/  XO_MOV ; 
 int /*<<< orphan*/  XO_MOVSD ; 
 int XOg_CMP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int) ; 
 scalar_t__ FUNC17 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC18(ASMState *as, IRIns *ir)
{
  FUNC14(FUNC10(ir->t) || FUNC11(ir->t) || FUNC6(ir->t) ||
	     (LJ_DUALNUM && FUNC7(ir->t)));
#if LJ_64
  if (irt_islightud(ir->t)) {
    Reg dest = asm_load_lightud64(as, ir, 1);
    if (ra_hasreg(dest)) {
      asm_fuseahuref(as, ir->op1, RSET_GPR);
      emit_mrm(as, XO_MOV, dest|REX_64, RID_MRM);
    }
    return;
  } else
#endif
  if (FUNC17(ir)) {
    RegSet allow = FUNC10(ir->t) ? RSET_FPR : RSET_GPR;
    Reg dest = FUNC15(as, ir, allow);
    FUNC0(as, ir->op1, RSET_GPR);
    FUNC4(as, dest < RID_MAX_GPR ? XO_MOV : XO_MOVSD, dest, RID_MRM);
  } else {
    FUNC0(as, ir->op1, RSET_GPR);
  }
  /* Always do the type check, even if the load result is unused. */
  as->mrm.ofs += 4;
  FUNC1(as, FUNC10(ir->t) ? CC_AE : CC_NE);
  if (LJ_64 && FUNC13(ir->t) >= IRT_NUM) {
    FUNC14(FUNC8(ir->t) || FUNC10(ir->t));
    FUNC5(as, LJ_TISNUM);
    FUNC4(as, XO_ARITHi, XOg_CMP, RID_MRM);
  } else {
    FUNC3(as, FUNC12(ir->t));
    FUNC4(as, XO_ARITHi8, XOg_CMP, RID_MRM);
  }
}