#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_10__ {int freeset; scalar_t__ loopref; int modset; int /*<<< orphan*/ * cost; } ;
struct TYPE_9__ {int /*<<< orphan*/  t; scalar_t__ r; } ;
typedef  int RegSet ;
typedef  size_t Reg ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int RID_NUM_GPR ; 
 int RSET_SCRATCH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (TYPE_2__*,int) ; 
 size_t FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,size_t) ; 
 size_t FUNC15 (int) ; 
 size_t FUNC16 (int) ; 
 scalar_t__ FUNC17 (int,size_t) ; 

__attribute__((used)) static Reg FUNC18(ASMState *as, IRRef ref, RegSet allow)
{
  IRIns *ir = FUNC0(ref);
  RegSet pick = as->freeset & allow;
  Reg r;
  FUNC6(FUNC10(ir->r));
  if (pick) {
    /* First check register hint from propagation or PHI. */
    if (FUNC9(ir->r)) {
      r = FUNC8(ir->r);
      if (FUNC17(pick, r))  /* Use hint register if possible. */
	goto found;
      /* Rematerialization is cheaper than missing a hint. */
      if (FUNC17(allow, r) && FUNC3(FUNC13(as->cost[r]))) {
	FUNC12(as, FUNC13(as->cost[r]));
	goto found;
      }
      FUNC1((as, "hintmiss  $f $r", ref, r));
    }
    /* Invariants should preferably get unmodified registers. */
    if (ref < as->loopref && !FUNC4(ir->t)) {
      if ((pick & ~as->modset))
	pick &= ~as->modset;
      r = FUNC15(pick);  /* Reduce conflicts with inverse allocation. */
    } else {
      /* We've got plenty of regs, so get callee-save regs if possible. */
      if (RID_NUM_GPR > 8 && (pick & ~RSET_SCRATCH))
	pick &= ~RSET_SCRATCH;
      r = FUNC16(pick);
    }
  } else {
    r = FUNC7(as, allow);
  }
found:
  FUNC1((as, "alloc     $f $r", ref, r));
  ir->r = (uint8_t)r;
  FUNC14(as->freeset, r);
  FUNC11(as, r);
  as->cost[r] = FUNC2(ref, FUNC5(ir->t));
  return r;
}