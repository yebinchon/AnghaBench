#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_16__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_21__ {int /*<<< orphan*/  const startins; } ;
struct TYPE_20__ {int freeset; int /*<<< orphan*/  topslot; int /*<<< orphan*/  parent; int /*<<< orphan*/  J; TYPE_1__* T; } ;
struct TYPE_19__ {size_t mapofs; size_t nent; scalar_t__ nslots; int /*<<< orphan*/  topslot; } ;
struct TYPE_18__ {size_t nsnap; scalar_t__ link; int /*<<< orphan*/ * snapmap; TYPE_2__* snap; } ;
struct TYPE_17__ {int /*<<< orphan*/  const* dispatch; } ;
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
 TYPE_16__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LJ_FR2 ; 
 int /*<<< orphan*/  REF_BASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RID_BASE ; 
 int /*<<< orphan*/  RID_DISPATCH ; 
 int /*<<< orphan*/  RID_LPC ; 
 int /*<<< orphan*/  RID_RET ; 
 int RSET_GPR ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  jit_base ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC18(ASMState *as)
{
  SnapNo snapno = as->T->nsnap-1;  /* Last snapshot. */
  SnapShot *snap = &as->T->snap[snapno];
  int gotframe = 0;
  BCReg baseslot = FUNC2(as, snap, &gotframe);

  as->topslot = snap->topslot;
  FUNC10(as);
  FUNC15(as, REF_BASE, FUNC1(RID_BASE));

  if (as->T->link == 0) {
    /* Setup fixed registers for exit to interpreter. */
    const BCIns *pc = FUNC16(as->T->snapmap[snap->mapofs + snap->nent]);
    int32_t mres;
    if (FUNC9(*pc) == BC_JLOOP) {  /* NYI: find a better way to do this. */
      BCIns *retpc = &FUNC17(as->J, FUNC7(*pc))->startins;
      if (FUNC8(FUNC9(*retpc)))
	pc = retpc;
    }
    FUNC14(as, FUNC13(FUNC0(as->J)->dispatch), RID_DISPATCH);
    FUNC14(as, FUNC13(pc), RID_LPC);
    mres = (int32_t)(snap->nslots - baseslot);
    switch (FUNC9(*pc)) {
    case BC_CALLM: case BC_CALLMT:
      mres -= (int32_t)(1 + LJ_FR2 + FUNC5(*pc) + FUNC6(*pc)); break;
    case BC_RETM: mres -= (int32_t)(FUNC5(*pc) + FUNC7(*pc)); break;
    case BC_TSETM: mres -= (int32_t)FUNC5(*pc); break;
    default: if (FUNC9(*pc) < BC_FUNCF) mres = 0; break;
    }
    FUNC14(as, mres, RID_RET);  /* Return MULTRES or 0. */
  } else if (baseslot) {
    /* Save modified BASE for linking to trace with higher start frame. */
    FUNC12(as, RID_BASE, jit_base);
  }
  FUNC11(as, RID_BASE, 8*(int32_t)baseslot);

  /* Sync the interpreter state with the on-trace state. */
  FUNC4(as, snap);

  /* Root traces that add frames need to check the stack at the end. */
  if (!as->parent && gotframe)
    FUNC3(as, as->topslot, NULL, as->freeset & RSET_GPR, snapno);
}