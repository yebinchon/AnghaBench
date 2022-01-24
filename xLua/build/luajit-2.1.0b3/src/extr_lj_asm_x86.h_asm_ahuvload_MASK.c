#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int ofs; } ;
struct TYPE_21__ {int flags; TYPE_1__ mrm; } ;
struct TYPE_20__ {int /*<<< orphan*/  t; int /*<<< orphan*/  op1; } ;
typedef  int /*<<< orphan*/  RegSet ;
typedef  int Reg ;
typedef  TYPE_2__ IRIns ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  CC_AE ; 
 int /*<<< orphan*/  CC_NE ; 
 scalar_t__ IRT_NUM ; 
 int JIT_F_BMI2 ; 
 scalar_t__ LJ_64 ; 
 scalar_t__ LJ_DUALNUM ; 
 int LJ_TISNUM ; 
 int REX_64 ; 
 int RID_MAX_GPR ; 
 int RID_MRM ; 
 int RID_NONE ; 
 int /*<<< orphan*/  RSET_FPR ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int VEX_64 ; 
 int XI_O16 ; 
 int XO_ARITHi ; 
 int XO_ARITHi8 ; 
 int XO_MOV ; 
 int XO_MOVSD ; 
 int XOg_CMP ; 
 int XOg_ROR ; 
 int XOg_SAR ; 
 int XOg_SHR ; 
 int XV_RORX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int FUNC18 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int) ; 
 int FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC23(ASMState *as, IRIns *ir)
{
#if LJ_GC64
  Reg tmp = RID_NONE;
#endif
  FUNC17(FUNC13(ir->t) || FUNC14(ir->t) || FUNC8(ir->t) ||
	     (LJ_DUALNUM && FUNC9(ir->t)));
#if LJ_64 && !LJ_GC64
  if (irt_islightud(ir->t)) {
    Reg dest = asm_load_lightud64(as, ir, 1);
    if (ra_hasreg(dest)) {
      asm_fuseahuref(as, ir->op1, RSET_GPR);
      emit_mrm(as, XO_MOV, dest|REX_64, RID_MRM);
    }
    return;
  } else
#endif
  if (FUNC21(ir)) {
    RegSet allow = FUNC13(ir->t) ? RSET_FPR : RSET_GPR;
    Reg dest = FUNC18(as, ir, allow);
    FUNC0(as, ir->op1, RSET_GPR);
#if LJ_GC64
    if (irt_isaddr(ir->t)) {
      emit_shifti(as, XOg_SHR|REX_64, dest, 17);
      asm_guardcc(as, CC_NE);
      emit_i8(as, irt_toitype(ir->t));
      emit_rr(as, XO_ARITHi8, XOg_CMP, dest);
      emit_i8(as, XI_O16);
      if ((as->flags & JIT_F_BMI2)) {
	emit_i8(as, 47);
	emit_mrm(as, XV_RORX|VEX_64, dest, RID_MRM);
      } else {
	emit_shifti(as, XOg_ROR|REX_64, dest, 47);
	emit_mrm(as, XO_MOV, dest|REX_64, RID_MRM);
      }
      return;
    } else
#endif
    FUNC4(as, dest < RID_MAX_GPR ? XO_MOV : XO_MOVSD, dest, RID_MRM);
  } else {
    RegSet gpr = RSET_GPR;
#if LJ_GC64
    if (irt_isaddr(ir->t)) {
      tmp = ra_scratch(as, RSET_GPR);
      gpr = rset_exclude(gpr, tmp);
    }
#endif
    FUNC0(as, ir->op1, gpr);
  }
  /* Always do the type check, even if the load result is unused. */
  as->mrm.ofs += 4;
  FUNC1(as, FUNC13(ir->t) ? CC_AE : CC_NE);
  if (LJ_64 && FUNC16(ir->t) >= IRT_NUM) {
    FUNC17(FUNC10(ir->t) || FUNC13(ir->t));
#if LJ_GC64
    emit_u32(as, LJ_TISNUM << 15);
#else
    FUNC7(as, LJ_TISNUM);
#endif
    FUNC4(as, XO_ARITHi, XOg_CMP, RID_MRM);
#if LJ_GC64
  } else if (irt_isaddr(ir->t)) {
    as->mrm.ofs -= 4;
    emit_i8(as, irt_toitype(ir->t));
    emit_mrm(as, XO_ARITHi8, XOg_CMP, tmp);
    emit_shifti(as, XOg_SAR|REX_64, tmp, 47);
    emit_mrm(as, XO_MOV, tmp|REX_64, RID_MRM);
  } else if (irt_isnil(ir->t)) {
    as->mrm.ofs -= 4;
    emit_i8(as, -1);
    emit_mrm(as, XO_ARITHi8, XOg_CMP|REX_64, RID_MRM);
  } else {
    emit_u32(as, (irt_toitype(ir->t) << 15) | 0x7fff);
    emit_mrm(as, XO_ARITHi, XOg_CMP, RID_MRM);
#else
  } else {
    FUNC3(as, FUNC15(ir->t));
    FUNC4(as, XO_ARITHi8, XOg_CMP, RID_MRM);
#endif
  }
}