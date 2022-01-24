#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_11__ {int ofs; } ;
struct TYPE_13__ {TYPE_1__ mrm; } ;
struct TYPE_12__ {scalar_t__ r; int /*<<< orphan*/  t; int /*<<< orphan*/  i; int /*<<< orphan*/  op1; int /*<<< orphan*/  op2; } ;
typedef  int /*<<< orphan*/  RegSet ;
typedef  int Reg ;
typedef  TYPE_2__ IRIns ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LJ_DUALNUM ; 
 int REX_64 ; 
 int /*<<< orphan*/  RID_MRM ; 
 int RID_NONE ; 
 scalar_t__ RID_SINK ; 
 int /*<<< orphan*/  RSET_FPR ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  XO_MOVSDto ; 
 int /*<<< orphan*/  XO_MOVmi ; 
 int /*<<< orphan*/  XO_MOVto ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC16(ASMState *as, IRIns *ir)
{
  if (ir->r == RID_SINK)
    return;
  if (FUNC8(ir->t)) {
    Reg src = FUNC12(as, ir->op2, RSET_FPR);
    FUNC1(as, ir->op1, RSET_GPR);
    FUNC3(as, XO_MOVSDto, src, RID_MRM);
#if LJ_64
  } else if (irt_islightud(ir->t)) {
    Reg src = ra_alloc1(as, ir->op2, RSET_GPR);
    asm_fuseahuref(as, ir->op1, rset_exclude(RSET_GPR, src));
    emit_mrm(as, XO_MOVto, src|REX_64, RID_MRM);
#endif
  } else {
    IRIns *irr = FUNC0(ir->op2);
    RegSet allow = RSET_GPR;
    Reg src = RID_NONE;
    if (!FUNC4(ir->op2)) {
      src = FUNC12(as, ir->op2, allow);
      FUNC14(allow, src);
    }
    FUNC1(as, ir->op1, allow);
    if (FUNC13(src)) {
      FUNC3(as, XO_MOVto, src, RID_MRM);
    } else if (!FUNC9(irr->t)) {
      FUNC11(FUNC5(ir->t) || (LJ_DUALNUM && FUNC6(ir->t)));
      FUNC2(as, irr->i);
      FUNC3(as, XO_MOVmi, 0, RID_MRM);
    }
    as->mrm.ofs += 4;
    FUNC2(as, (int32_t)FUNC10(ir->t));
    FUNC3(as, XO_MOVmi, 0, RID_MRM);
  }
}