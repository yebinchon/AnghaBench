#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_20__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_18__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_27__ {scalar_t__ ktrace; int /*<<< orphan*/  curfinal; } ;
struct TYPE_26__ {int /*<<< orphan*/  const startins; } ;
struct TYPE_25__ {int freeset; int /*<<< orphan*/  topslot; int /*<<< orphan*/  parent; TYPE_5__* J; TYPE_1__* T; } ;
struct TYPE_24__ {size_t mapofs; size_t nent; scalar_t__ nslots; int /*<<< orphan*/  topslot; } ;
struct TYPE_23__ {int /*<<< orphan*/  o; int /*<<< orphan*/  gcr; } ;
struct TYPE_22__ {size_t nsnap; scalar_t__ link; int /*<<< orphan*/ * snapmap; TYPE_2__* snap; } ;
struct TYPE_21__ {int /*<<< orphan*/  const* dispatch; } ;
typedef  TYPE_2__ SnapShot ;
typedef  size_t SnapNo ;
typedef  scalar_t__ BCReg ;
typedef  int /*<<< orphan*/  const BCIns ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
#define  BC_CALLM 131 
#define  BC_CALLMT 130 
 int BC_FUNCF ; 
 int BC_JLOOP ; 
#define  BC_RETM 129 
#define  BC_TSETM 128 
 TYPE_20__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  IR_KGC ; 
 TYPE_18__* FUNC1 (TYPE_5__*) ; 
 scalar_t__ LJ_FR2 ; 
 size_t LJ_GC64 ; 
 int /*<<< orphan*/  REF_BASE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RID_BASE ; 
 int /*<<< orphan*/  RID_DISPATCH ; 
 int /*<<< orphan*/  RID_LPC ; 
 int /*<<< orphan*/  RID_RET ; 
 int RSET_GPR ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  jit_base ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC20 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC21 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC23(ASMState *as)
{
  SnapNo snapno = as->T->nsnap-1;  /* Last snapshot. */
  SnapShot *snap = &as->T->snap[snapno];
  int gotframe = 0;
  BCReg baseslot = FUNC3(as, snap, &gotframe);

  as->topslot = snap->topslot;
  FUNC11(as);
  FUNC18(as, REF_BASE, FUNC2(RID_BASE));

  if (as->T->link == 0) {
    /* Setup fixed registers for exit to interpreter. */
    const BCIns *pc = FUNC20(&as->T->snapmap[snap->mapofs + snap->nent]);
    int32_t mres;
    if (FUNC10(*pc) == BC_JLOOP) {  /* NYI: find a better way to do this. */
      BCIns *retpc = &FUNC21(as->J, FUNC8(*pc))->startins;
      if (FUNC9(FUNC10(*retpc)))
	pc = retpc;
    }
#if LJ_GC64
    emit_loadu64(as, RID_LPC, u64ptr(pc));
#else
    FUNC17(as, FUNC15(FUNC1(as->J)->dispatch), RID_DISPATCH);
    FUNC17(as, FUNC15(pc), RID_LPC);
#endif
    mres = (int32_t)(snap->nslots - baseslot - LJ_FR2);
    switch (FUNC10(*pc)) {
    case BC_CALLM: case BC_CALLMT:
      mres -= (int32_t)(1 + LJ_FR2 + FUNC6(*pc) + FUNC7(*pc)); break;
    case BC_RETM: mres -= (int32_t)(FUNC6(*pc) + FUNC8(*pc)); break;
    case BC_TSETM: mres -= (int32_t)FUNC6(*pc); break;
    default: if (FUNC10(*pc) < BC_FUNCF) mres = 0; break;
    }
    FUNC17(as, mres, RID_RET);  /* Return MULTRES or 0. */
  } else if (baseslot) {
    /* Save modified BASE for linking to trace with higher start frame. */
    FUNC14(as, RID_BASE, jit_base);
  }
  FUNC12(as, RID_BASE, 8*(int32_t)baseslot);

  if (as->J->ktrace) {  /* Patch ktrace slot with the final GCtrace pointer. */
    FUNC19(FUNC0(as->J->ktrace)[LJ_GC64].gcr, FUNC16(as->J->curfinal));
    FUNC0(as->J->ktrace)->o = IR_KGC;
  }

  /* Sync the interpreter state with the on-trace state. */
  FUNC5(as, snap);

  /* Root traces that add frames need to check the stack at the end. */
  if (!as->parent && gotframe)
    FUNC4(as, as->topslot, NULL, as->freeset & RSET_GPR, snapno);
}