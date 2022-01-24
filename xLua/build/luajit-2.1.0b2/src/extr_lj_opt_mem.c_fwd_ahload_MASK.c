#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__* chain; int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ jit_State ;
struct TYPE_21__ {int /*<<< orphan*/  u64; } ;
typedef  TYPE_2__ cTValue ;
struct TYPE_22__ {scalar_t__ op1; scalar_t__ op2; scalar_t__ prev; scalar_t__ o; int /*<<< orphan*/  t; } ;
struct TYPE_19__ {size_t o; int /*<<< orphan*/  t; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  scalar_t__ TRef ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_3__ IRIns ;

/* Variables and functions */
#define  ALIAS_MAY 130 
#define  ALIAS_MUST 129 
#define  ALIAS_NO 128 
 TYPE_3__* FUNC0 (scalar_t__) ; 
 size_t IRDELTA_L2S ; 
 scalar_t__ IR_AREF ; 
 scalar_t__ IR_HREFK ; 
 scalar_t__ IR_KSLOT ; 
 size_t IR_NEWREF ; 
 scalar_t__ IR_TDUP ; 
 scalar_t__ IR_TNEW ; 
 scalar_t__ LJ_DUALNUM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (TYPE_1__*,TYPE_3__*,TYPE_3__*) ; 
 TYPE_14__* fins ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 

__attribute__((used)) static TRef FUNC20(jit_State *J, IRRef xref)
{
  IRIns *xr = FUNC0(xref);
  IRRef lim = xref;  /* Search limit. */
  IRRef ref;

  /* Search for conflicting stores. */
  ref = J->chain[fins->o+IRDELTA_L2S];
  while (ref > xref) {
    IRIns *store = FUNC0(ref);
    switch (FUNC2(J, xr, FUNC0(store->op1))) {
    case ALIAS_NO:   break;  /* Continue searching. */
    case ALIAS_MAY:  lim = ref; goto cselim;  /* Limit search for load. */
    case ALIAS_MUST: return store->op2;  /* Store forwarding. */
    }
    ref = store->prev;
  }

  /* No conflicting store (yet): const-fold loads from allocations. */
  {
    IRIns *ir = (xr->o == IR_HREFK || xr->o == IR_AREF) ? FUNC0(xr->op1) : xr;
    IRRef tab = ir->op1;
    ir = FUNC0(tab);
    if (ir->o == IR_TNEW || (ir->o == IR_TDUP && FUNC5(xr->op2))) {
      /* A NEWREF with a number key may end up pointing to the array part.
      ** But it's referenced from HSTORE and not found in the ASTORE chain.
      ** For now simply consider this a conflict without forwarding anything.
      */
      if (xr->o == IR_AREF) {
	IRRef ref2 = J->chain[IR_NEWREF];
	while (ref2 > tab) {
	  IRIns *newref = FUNC0(ref2);
	  if (FUNC8(FUNC0(newref->op2)->t))
	    goto cselim;
	  ref2 = newref->prev;
	}
      }
      /* NEWREF inhibits CSE for HREF, and dependent FLOADs from HREFK/AREF.
      ** But the above search for conflicting stores was limited by xref.
      ** So continue searching, limited by the TNEW/TDUP. Store forwarding
      ** is ok, too. A conflict does NOT limit the search for a matching load.
      */
      while (ref > tab) {
	IRIns *store = FUNC0(ref);
	switch (FUNC2(J, xr, FUNC0(store->op1))) {
	case ALIAS_NO:   break;  /* Continue searching. */
	case ALIAS_MAY:  goto cselim;  /* Conflicting store. */
	case ALIAS_MUST: return store->op2;  /* Store forwarding. */
	}
	ref = store->prev;
      }
      FUNC18(ir->o != IR_TNEW || FUNC7(fins->t));
      if (FUNC9(fins->t)) {
	return FUNC1(FUNC11(fins->t));
      } else if (FUNC8(fins->t) || (LJ_DUALNUM && FUNC6(fins->t)) ||
		 FUNC10(fins->t)) {
	TValue keyv;
	cTValue *tv;
	IRIns *key = FUNC0(xr->op2);
	if (key->o == IR_KSLOT) key = FUNC0(key->op1);
	FUNC16(J->L, &keyv, key);
	tv = FUNC17(J->L, FUNC4(FUNC0(ir->op1)), &keyv);
	FUNC18(FUNC12(tv) == FUNC11(fins->t));
	if (FUNC8(fins->t))
	  return FUNC14(J, tv->u64);
	else if (LJ_DUALNUM && FUNC6(fins->t))
	  return FUNC13(J, FUNC3(tv));
	else
	  return FUNC15(J, FUNC19(tv));
      }
      /* Othwerwise: don't intern as a constant. */
    }
  }

cselim:
  /* Try to find a matching load. Below the conflicting store, if any. */
  ref = J->chain[fins->o];
  while (ref > lim) {
    IRIns *load = FUNC0(ref);
    if (load->op1 == xref)
      return ref;  /* Load forwarding. */
    ref = load->prev;
  }
  return 0;  /* Conflict or no match. */
}