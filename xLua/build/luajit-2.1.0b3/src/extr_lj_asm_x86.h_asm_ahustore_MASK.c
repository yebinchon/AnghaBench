#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_20__ {int ofs; } ;
struct TYPE_23__ {TYPE_3__ mrm; TYPE_1__* J; } ;
struct TYPE_22__ {scalar_t__ r; int i; int /*<<< orphan*/  t; int /*<<< orphan*/  op1; int /*<<< orphan*/  op2; } ;
struct TYPE_19__ {int lo; int hi; } ;
struct TYPE_21__ {TYPE_2__ u32; } ;
struct TYPE_18__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_4__ TValue ;
typedef  int /*<<< orphan*/  RegSet ;
typedef  int Reg ;
typedef  TYPE_5__ IRIns ;
typedef  TYPE_6__ ASMState ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LJ_DUALNUM ; 
 int LJ_TNUMX ; 
 int REX_64 ; 
 int /*<<< orphan*/  RID_MRM ; 
 int RID_NONE ; 
 scalar_t__ RID_SINK ; 
 int /*<<< orphan*/  RSET_FPR ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  XO_ARITHi ; 
 int /*<<< orphan*/  XO_MOVSDto ; 
 int /*<<< orphan*/  XO_MOVmi ; 
 int /*<<< orphan*/  XO_MOVto ; 
 int XOg_OR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC19(ASMState *as, IRIns *ir)
{
  if (ir->r == RID_SINK)
    return;
  if (FUNC9(ir->t)) {
    Reg src = FUNC14(as, ir->op2, RSET_FPR);
    FUNC1(as, ir->op1, RSET_GPR);
    FUNC3(as, XO_MOVSDto, src, RID_MRM);
#if LJ_64 && !LJ_GC64
  } else if (irt_islightud(ir->t)) {
    Reg src = ra_alloc1(as, ir->op2, RSET_GPR);
    asm_fuseahuref(as, ir->op1, rset_exclude(RSET_GPR, src));
    emit_mrm(as, XO_MOVto, src|REX_64, RID_MRM);
#endif
#if LJ_GC64
  } else if (irref_isk(ir->op2)) {
    TValue k;
    lj_ir_kvalue(as->J->L, &k, IR(ir->op2));
    asm_fuseahuref(as, ir->op1, RSET_GPR);
    if (tvisnil(&k)) {
      emit_i32(as, -1);
      emit_mrm(as, XO_MOVmi, REX_64, RID_MRM);
    } else {
      emit_u32(as, k.u32.lo);
      emit_mrm(as, XO_MOVmi, 0, RID_MRM);
      as->mrm.ofs += 4;
      emit_u32(as, k.u32.hi);
      emit_mrm(as, XO_MOVmi, 0, RID_MRM);
    }
#endif
  } else {
    IRIns *irr = FUNC0(ir->op2);
    RegSet allow = RSET_GPR;
    Reg src = RID_NONE;
    if (!FUNC5(ir->op2)) {
      src = FUNC14(as, ir->op2, allow);
      FUNC16(allow, src);
    }
    FUNC1(as, ir->op1, allow);
    if (FUNC15(src)) {
#if LJ_GC64
      if (!(LJ_DUALNUM && irt_isinteger(ir->t))) {
	/* TODO: 64 bit store + 32 bit load-modify-store is suboptimal. */
	as->mrm.ofs += 4;
	emit_u32(as, irt_toitype(ir->t) << 15);
	emit_mrm(as, XO_ARITHi, XOg_OR, RID_MRM);
	as->mrm.ofs -= 4;
	emit_mrm(as, XO_MOVto, src|REX_64, RID_MRM);
	return;
      }
#endif
      FUNC3(as, XO_MOVto, src, RID_MRM);
    } else if (!FUNC10(irr->t)) {
      FUNC13(FUNC6(ir->t) || (LJ_DUALNUM && FUNC7(ir->t)));
      FUNC2(as, irr->i);
      FUNC3(as, XO_MOVmi, 0, RID_MRM);
    }
    as->mrm.ofs += 4;
#if LJ_GC64
    lua_assert(LJ_DUALNUM && irt_isinteger(ir->t));
    emit_i32(as, LJ_TNUMX << 15);
#else
    FUNC2(as, (int32_t)FUNC11(ir->t));
#endif
    FUNC3(as, XO_MOVmi, 0, RID_MRM);
  }
}