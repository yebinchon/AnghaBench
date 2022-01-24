#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int freeset; int /*<<< orphan*/ * cost; scalar_t__ orignins; } ;
struct TYPE_10__ {scalar_t__ o; int /*<<< orphan*/  s; int /*<<< orphan*/  t; scalar_t__ op1; } ;
typedef  size_t Reg ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 scalar_t__ IR_PHI ; 
 size_t RID_FPRET ; 
 size_t RID_RET ; 
 size_t RID_TMP ; 
 size_t RID_XMM0 ; 
 int RSET_FPR ; 
 int RSET_GPR ; 
 int /*<<< orphan*/  SPOFS_TMP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(ASMState *as)
{
  int need = 0;
  IRIns *ir;
  for (ir = FUNC0(as->orignins-1); ir->o == IR_PHI; ir--)
    if (FUNC5(ir->s) && FUNC5(FUNC0(ir->op1)->s))
      need |= FUNC4(ir->t) ? 2 : 1;  /* Unsynced spill slot? */
  if ((need & 1)) {  /* Copy integer spill slots. */
#if !LJ_TARGET_X86ORX64
    Reg r = RID_TMP;
#else
    Reg r = RID_RET;
    if ((as->freeset & RSET_GPR))
      r = rset_pickbot((as->freeset & RSET_GPR));
    else
      emit_spload(as, IR(regcost_ref(as->cost[r])), r, SPOFS_TMP);
#endif
    for (ir = FUNC0(as->orignins-1); ir->o == IR_PHI; ir--) {
      if (FUNC5(ir->s)) {
	IRIns *irl = FUNC0(ir->op1);
	if (FUNC5(irl->s) && !FUNC4(ir->t)) {
	  FUNC3(as, irl, r, FUNC9(irl->s));
	  FUNC2(as, ir, r, FUNC9(ir->s));
	  FUNC1(as);
	}
      }
    }
#if LJ_TARGET_X86ORX64
    if (!rset_test(as->freeset, r))
      emit_spstore(as, IR(regcost_ref(as->cost[r])), r, SPOFS_TMP);
#endif
  }
#if !LJ_SOFTFP
  if ((need & 2)) {  /* Copy FP spill slots. */
#if LJ_TARGET_X86
    Reg r = RID_XMM0;
#else
    Reg r = RID_FPRET;
#endif
    if ((as->freeset & RSET_FPR))
      r = FUNC7((as->freeset & RSET_FPR));
    if (!FUNC8(as->freeset, r))
      FUNC2(as, FUNC0(FUNC6(as->cost[r])), r, SPOFS_TMP);
    for (ir = FUNC0(as->orignins-1); ir->o == IR_PHI; ir--) {
      if (FUNC5(ir->s)) {
	IRIns *irl = FUNC0(ir->op1);
	if (FUNC5(irl->s) && FUNC4(ir->t)) {
	  FUNC3(as, irl, r, FUNC9(irl->s));
	  FUNC2(as, ir, r, FUNC9(ir->s));
	  FUNC1(as);
	}
      }
    }
    if (!FUNC8(as->freeset, r))
      FUNC3(as, FUNC0(FUNC6(as->cost[r])), r, SPOFS_TMP);
  }
#endif
}