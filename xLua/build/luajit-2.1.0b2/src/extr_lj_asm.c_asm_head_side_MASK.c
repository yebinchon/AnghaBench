#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_31__ {scalar_t__ topslot; size_t stopins; size_t* parentmap; int freeset; TYPE_2__* T; TYPE_11__* J; TYPE_1__* parent; int /*<<< orphan*/ * cost; scalar_t__ snapno; } ;
struct TYPE_30__ {scalar_t__ o; int op2; size_t r; int /*<<< orphan*/  s; int /*<<< orphan*/  t; } ;
struct TYPE_29__ {scalar_t__ topslot; int /*<<< orphan*/  nsnap; scalar_t__ traceno; scalar_t__ spadjust; } ;
struct TYPE_28__ {scalar_t__ topslot; scalar_t__ spadjust; TYPE_3__* ir; } ;
struct TYPE_27__ {int /*<<< orphan*/  exitno; } ;
typedef  int RegSet ;
typedef  size_t RegSP ;
typedef  size_t Reg ;
typedef  size_t IRRef1 ;
typedef  size_t IRRef ;
typedef  TYPE_3__ IRIns ;
typedef  int /*<<< orphan*/  ExitNo ;
typedef  TYPE_4__ ASMState ;

/* Variables and functions */
 TYPE_3__* FUNC0 (size_t) ; 
 int IRSLOAD_PARENT ; 
 scalar_t__ IR_HIOP ; 
 scalar_t__ IR_PVAL ; 
 scalar_t__ IR_SLOAD ; 
 scalar_t__ LJ_SOFTFP ; 
 int /*<<< orphan*/  LJ_TRERR_NYICOAL ; 
 size_t REF_BASE ; 
 size_t REF_FIRST ; 
 int RID_MAX ; 
 int RSET_ALL ; 
 int RSET_EMPTY ; 
 int RSET_FPR ; 
 int RSET_GPR ; 
 int FUNC1 (TYPE_4__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_3__*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 size_t FUNC16 (TYPE_4__*,size_t,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,size_t) ; 
 scalar_t__ FUNC18 (size_t) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC22 (size_t,size_t) ; 
 scalar_t__ FUNC23 (TYPE_3__*) ; 
 size_t FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (size_t) ; 
 int /*<<< orphan*/  FUNC26 (int,size_t) ; 
 size_t FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (int,size_t) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC30(ASMState *as)
{
  IRRef1 sloadins[RID_MAX];
  RegSet allow = RSET_ALL;  /* Inverse of all coalesced registers. */
  RegSet live = RSET_EMPTY;  /* Live parent registers. */
  IRIns *irp = &as->parent->ir[REF_BASE];  /* Parent base. */
  int32_t spadj, spdelta;
  int pass2 = 0;
  int pass3 = 0;
  IRRef i;

  if (as->snapno && as->topslot > as->parent->topslot) {
    /* Force snap #0 alloc to prevent register overwrite in stack check. */
    as->snapno = 0;
    FUNC2(as);
  }
  allow = FUNC1(as, irp, allow);

  /* Scan all parent SLOADs and collect register dependencies. */
  for (i = as->stopins; i > REF_BASE; i--) {
    IRIns *ir = FUNC0(i);
    RegSP rs;
    FUNC15((ir->o == IR_SLOAD && (ir->op2 & IRSLOAD_PARENT)) ||
	       (LJ_SOFTFP && ir->o == IR_HIOP) || ir->o == IR_PVAL);
    rs = as->parentmap[i - REF_FIRST];
    if (FUNC18(ir->r)) {
      FUNC26(allow, ir->r);
      if (FUNC19(ir->s)) {
	FUNC21(as, ir, ir->r);
	FUNC5(as);
      }
    } else if (FUNC19(ir->s)) {
      FUNC13(ir->t);
      pass2 = 1;
    }
    if (ir->r == rs) {  /* Coalesce matching registers right now. */
      FUNC17(as, ir->r);
    } else if (FUNC19(FUNC25(rs))) {
      if (FUNC18(ir->r))
	pass3 = 1;
    } else if (FUNC23(ir)) {
      sloadins[rs] = (IRRef1)i;
      FUNC28(live, rs);  /* Block live parent register. */
    }
  }

  /* Calculate stack frame adjustment. */
  spadj = FUNC3(as);
  spdelta = spadj - (int32_t)as->parent->spadjust;
  if (spdelta < 0) {  /* Don't shrink the stack frame. */
    spadj = (int32_t)as->parent->spadjust;
    spdelta = 0;
  }
  as->T->spadjust = (uint16_t)spadj;

  /* Reload spilled target registers. */
  if (pass2) {
    for (i = as->stopins; i > REF_BASE; i--) {
      IRIns *ir = FUNC0(i);
      if (FUNC12(ir->t)) {
	RegSet mask;
	Reg r;
	RegSP rs;
	FUNC10(ir->t);
	rs = as->parentmap[i - REF_FIRST];
	if (!FUNC19(FUNC25(rs)))
	  FUNC22(ir->r, rs);  /* Hint may be gone, set it again. */
	else if (FUNC29(FUNC25(rs))+spdelta == FUNC29(ir->s))
	  continue;  /* Same spill slot, do nothing. */
	mask = ((!LJ_SOFTFP && FUNC11(ir->t)) ? RSET_FPR : RSET_GPR) & allow;
	if (mask == RSET_EMPTY)
	  FUNC14(as->J, LJ_TRERR_NYICOAL);
	r = FUNC16(as, i, mask);
	FUNC21(as, ir, r);
	FUNC26(allow, r);
	if (r == rs) {  /* Coalesce matching registers right now. */
	  FUNC17(as, r);
	  FUNC26(live, r);
	} else if (FUNC19(FUNC25(rs))) {
	  pass3 = 1;
	}
	FUNC5(as);
      }
    }
  }

  /* Store trace number and adjust stack frame relative to the parent. */
  FUNC7(as, (int32_t)as->T->traceno);
  FUNC9(as, spdelta);

#if !LJ_TARGET_X86ORX64
  /* Restore BASE register from parent spill slot. */
  if (FUNC19(irp->s))
    FUNC8(as, FUNC0(REF_BASE), FUNC0(REF_BASE)->r, FUNC29(irp->s));
#endif

  /* Restore target registers from parent spill slots. */
  if (pass3) {
    RegSet work = ~as->freeset & RSET_ALL;
    while (work) {
      Reg r = FUNC27(work);
      IRRef ref = FUNC24(as->cost[r]);
      RegSP rs = as->parentmap[ref - REF_FIRST];
      FUNC26(work, r);
      if (FUNC19(FUNC25(rs))) {
	int32_t ofs = FUNC29(FUNC25(rs));
	FUNC17(as, r);
	FUNC8(as, FUNC0(ref), r, ofs);
	FUNC5(as);
      }
    }
  }

  /* Shuffle registers to match up target regs with parent regs. */
  for (;;) {
    RegSet work;

    /* Repeatedly coalesce free live registers by moving to their target. */
    while ((work = as->freeset & live) != RSET_EMPTY) {
      Reg rp = FUNC27(work);
      IRIns *ir = FUNC0(sloadins[rp]);
      FUNC26(live, rp);
      FUNC26(allow, rp);
      FUNC17(as, ir->r);
      FUNC6(as, ir, ir->r, rp);
      FUNC5(as);
    }

    /* We're done if no live registers remain. */
    if (live == RSET_EMPTY)
      break;

    /* Break cycles by renaming one target to a temp. register. */
    if (live & RSET_GPR) {
      RegSet tmpset = as->freeset & ~live & allow & RSET_GPR;
      if (tmpset == RSET_EMPTY)
	FUNC14(as->J, LJ_TRERR_NYICOAL);
      FUNC20(as, FUNC27(live & RSET_GPR), FUNC27(tmpset));
    }
    if (!LJ_SOFTFP && (live & RSET_FPR)) {
      RegSet tmpset = as->freeset & ~live & allow & RSET_FPR;
      if (tmpset == RSET_EMPTY)
	FUNC14(as->J, LJ_TRERR_NYICOAL);
      FUNC20(as, FUNC27(live & RSET_FPR), FUNC27(tmpset));
    }
    FUNC5(as);
    /* Continue with coalescing to fix up the broken cycle(s). */
  }

  /* Inherit top stack slot already checked by parent trace. */
  as->T->topslot = as->parent->topslot;
  if (as->topslot > as->T->topslot) {  /* Need to check for higher slot? */
#ifdef EXITSTATE_CHECKEXIT
    /* Highest exit + 1 indicates stack check. */
    ExitNo exitno = as->T->nsnap;
#else
    /* Reuse the parent exit in the context of the parent trace. */
    ExitNo exitno = as->J->exitno;
#endif
    as->T->topslot = (uint8_t)as->topslot;  /* Remember for child traces. */
    FUNC4(as, as->topslot, irp, allow & RSET_GPR, exitno);
  }
}