#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_13__ {int phiset; int freeset; int /*<<< orphan*/  J; scalar_t__* phireg; } ;
struct TYPE_12__ {scalar_t__ r; int /*<<< orphan*/  s; int /*<<< orphan*/  t; scalar_t__ op1; scalar_t__ op2; } ;
typedef  int RegSet ;
typedef  size_t Reg ;
typedef  scalar_t__ IRRef1 ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  LJ_SOFTFP ; 
 int /*<<< orphan*/  LJ_TRERR_NYIPHI ; 
 scalar_t__ RID_SINK ; 
 int RSET_FPR ; 
 int RSET_GPR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,size_t,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (TYPE_2__*,scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 size_t FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int,size_t) ; 

__attribute__((used)) static void FUNC13(ASMState *as, IRIns *ir)
{
  RegSet allow = ((!LJ_SOFTFP && FUNC2(ir->t)) ? RSET_FPR : RSET_GPR) &
		 ~as->phiset;
  RegSet afree = (as->freeset & allow);
  IRIns *irl = FUNC0(ir->op1);
  IRIns *irr = FUNC0(ir->op2);
  if (ir->r == RID_SINK)  /* Sink PHI. */
    return;
  /* Spill slot shuffling is not implemented yet (but rarely needed). */
  if (FUNC7(irl->s) || FUNC7(irr->s))
    FUNC4(as->J, LJ_TRERR_NYIPHI);
  /* Leave at least one register free for non-PHIs (and PHI cycle breaking). */
  if ((afree & (afree-1))) {  /* Two or more free registers? */
    Reg r;
    if (FUNC8(irr->r)) {  /* Get a register for the right PHI. */
      r = FUNC5(as, ir->op2, allow);
    } else {  /* Duplicate right PHI, need a copy (rare). */
      r = FUNC9(as, allow);
      FUNC1(as, irr, r, irr->r);
    }
    ir->r = (uint8_t)r;
    FUNC12(as->phiset, r);
    as->phireg[r] = (IRRef1)ir->op1;
    FUNC3(irl->t);  /* Marks left PHIs _with_ register. */
    if (FUNC8(irl->r))
      FUNC10(irl->r, r); /* Set register hint for left PHI. */
  } else {  /* Otherwise allocate a spill slot. */
    /* This is overly restrictive, but it triggers only on synthetic code. */
    if (FUNC6(irl->r) || FUNC6(irr->r))
      FUNC4(as->J, LJ_TRERR_NYIPHI);
    FUNC11(as, ir);
    irr->s = ir->s;  /* Set right PHI spill slot. Sync left slot later. */
  }
}