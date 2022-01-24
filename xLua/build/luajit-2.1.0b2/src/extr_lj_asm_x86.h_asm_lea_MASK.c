#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
struct TYPE_13__ {size_t base; size_t idx; int /*<<< orphan*/  ofs; int /*<<< orphan*/  scale; } ;
struct TYPE_15__ {scalar_t__* phireg; TYPE_1__ mrm; } ;
struct TYPE_14__ {scalar_t__ op1; scalar_t__ op2; size_t r; scalar_t__ o; int /*<<< orphan*/  i; int /*<<< orphan*/  t; } ;
typedef  int /*<<< orphan*/  RegSet ;
typedef  size_t Reg ;
typedef  TYPE_2__ IRIns ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 TYPE_2__* FUNC0 (scalar_t__) ; 
 scalar_t__ IR_ADD ; 
 int /*<<< orphan*/  RID_MRM ; 
 size_t RID_NONE ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  XM_SCALE1 ; 
 int /*<<< orphan*/  XO_LEA ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,scalar_t__) ; 
 size_t FUNC5 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC10(ASMState *as, IRIns *ir)
{
  IRIns *irl = FUNC0(ir->op1);
  IRIns *irr = FUNC0(ir->op2);
  RegSet allow = RSET_GPR;
  Reg dest;
  as->mrm.base = as->mrm.idx = RID_NONE;
  as->mrm.scale = XM_SCALE1;
  as->mrm.ofs = 0;
  if (FUNC7(irl->r)) {
    FUNC9(allow, irl->r);
    FUNC8(as, irl->r);
    as->mrm.base = irl->r;
    if (FUNC2(ir->op2) || FUNC7(irr->r)) {
      /* The PHI renaming logic does a better job in some cases. */
      if (FUNC7(ir->r) &&
	  ((FUNC3(irl->t) && as->phireg[ir->r] == ir->op1) ||
	   (FUNC3(irr->t) && as->phireg[ir->r] == ir->op2)))
	return 0;
      if (FUNC2(ir->op2)) {
	as->mrm.ofs = irr->i;
      } else {
	FUNC9(allow, irr->r);
	FUNC8(as, irr->r);
	as->mrm.idx = irr->r;
      }
    } else if (irr->o == IR_ADD && FUNC4(as, ir->op2) &&
	       FUNC2(irr->op2)) {
      Reg idx = FUNC5(as, irr->op1, allow);
      FUNC9(allow, idx);
      as->mrm.idx = (uint8_t)idx;
      as->mrm.ofs = FUNC0(irr->op2)->i;
    } else {
      return 0;
    }
  } else if (ir->op1 != ir->op2 && irl->o == IR_ADD && FUNC4(as, ir->op1) &&
	     (FUNC2(ir->op2) || FUNC2(irl->op2))) {
    Reg idx, base = FUNC5(as, irl->op1, allow);
    FUNC9(allow, base);
    as->mrm.base = (uint8_t)base;
    if (FUNC2(ir->op2)) {
      as->mrm.ofs = irr->i;
      idx = FUNC5(as, irl->op2, allow);
    } else {
      as->mrm.ofs = FUNC0(irl->op2)->i;
      idx = FUNC5(as, ir->op2, allow);
    }
    FUNC9(allow, idx);
    as->mrm.idx = (uint8_t)idx;
  } else {
    return 0;
  }
  dest = FUNC6(as, ir, allow);
  FUNC1(as, XO_LEA, dest, RID_MRM);
  return 1;  /* Success. */
}