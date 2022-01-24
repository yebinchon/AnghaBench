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
struct TYPE_13__ {int phiset; int freeset; int modset; int /*<<< orphan*/ * phireg; int /*<<< orphan*/ * cost; } ;
struct TYPE_12__ {size_t r; int /*<<< orphan*/  t; int /*<<< orphan*/  s; } ;
typedef  int RegSet ;
typedef  size_t Reg ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LJ_SOFTFP ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 size_t RID_NONE ; 
 int RSET_EMPTY ; 
 int RSET_FPR ; 
 int RSET_GPR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,size_t) ; 
 size_t FUNC15 (int) ; 
 size_t FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int,size_t) ; 
 int /*<<< orphan*/  FUNC18 (int,size_t) ; 

__attribute__((used)) static void FUNC19(ASMState *as)
{
  RegSet work;

  /* Find and resolve PHI register mismatches. */
  for (;;) {
    RegSet blocked = RSET_EMPTY;
    RegSet blockedby = RSET_EMPTY;
    RegSet phiset = as->phiset;
    while (phiset) {  /* Check all left PHI operand registers. */
      Reg r = FUNC15(phiset);
      IRIns *irl = FUNC0(as->phireg[r]);
      Reg left = irl->r;
      if (r != left) {  /* Mismatch? */
	if (!FUNC18(as->freeset, r)) {  /* PHI register blocked? */
	  IRRef ref = FUNC13(as->cost[r]);
	  /* Blocked by other PHI (w/reg)? */
	  if (!FUNC9(ref) && FUNC5(FUNC0(ref)->t)) {
	    FUNC17(blocked, r);
	    if (FUNC7(left))
	      FUNC17(blockedby, left);
	    left = RID_NONE;
	  } else {  /* Otherwise grab register from invariant. */
	    FUNC11(as, ref);
	    FUNC3(as);
	  }
	}
	if (FUNC7(left)) {
	  FUNC10(as, left, r);
	  FUNC3(as);
	}
      }
      FUNC14(phiset, r);
    }
    if (!blocked) break;  /* Finished. */
    if (!(as->freeset & blocked)) {  /* Break cycles if none are free. */
      FUNC2(as, blocked, blockedby, RSET_GPR);
      if (!LJ_SOFTFP) FUNC2(as, blocked, blockedby, RSET_FPR);
      FUNC3(as);
    }  /* Else retry some more renames. */
  }

  /* Restore/remat invariants whose registers are modified inside the loop. */
#if !LJ_SOFTFP
  work = as->modset & ~(as->freeset | as->phiset) & RSET_FPR;
  while (work) {
    Reg r = FUNC15(work);
    FUNC11(as, FUNC13(as->cost[r]));
    FUNC14(work, r);
    FUNC3(as);
  }
#endif
  work = as->modset & ~(as->freeset | as->phiset);
  while (work) {
    Reg r = FUNC15(work);
    FUNC11(as, FUNC13(as->cost[r]));
    FUNC14(work, r);
    FUNC3(as);
  }

  /* Allocate and save all unsaved PHI regs and clear marks. */
  work = as->phiset;
  while (work) {
    Reg r = FUNC16(work);
    IRRef lref = as->phireg[r];
    IRIns *ir = FUNC0(lref);
    if (FUNC8(ir->s)) {  /* Left PHI gained a spill slot? */
      FUNC4(ir->t);  /* Handled here, so clear marker now. */
      FUNC6(as, lref, FUNC1(r));
      FUNC12(as, ir, r);  /* Save to spill slot inside the loop. */
      FUNC3(as);
    }
    FUNC14(work, r);
  }
}