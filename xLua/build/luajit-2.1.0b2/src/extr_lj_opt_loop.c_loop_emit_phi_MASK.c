#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int nins; size_t nsnap; int /*<<< orphan*/ * snapmap; TYPE_3__* snap; } ;
struct TYPE_9__ {size_t* chain; size_t baseslot; size_t maxslot; int /*<<< orphan*/ * slot; TYPE_1__ cur; } ;
typedef  TYPE_2__ jit_State ;
struct TYPE_11__ {size_t op1; size_t op2; scalar_t__ o; int /*<<< orphan*/  t; } ;
struct TYPE_10__ {size_t mapofs; size_t nent; } ;
typedef  TYPE_3__ SnapShot ;
typedef  size_t SnapNo ;
typedef  int /*<<< orphan*/  SnapEntry ;
typedef  size_t MSize ;
typedef  size_t IRRef1 ;
typedef  size_t IRRef ;
typedef  TYPE_4__ IRIns ;

/* Variables and functions */
 TYPE_4__* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IR_CALLN ; 
 scalar_t__ IR_CARG ; 
 size_t IR_LOOP ; 
 int /*<<< orphan*/  IR_PHI ; 
 size_t LJ_MAX_PHI ; 
 int /*<<< orphan*/  LJ_TRERR_PHIOV ; 
 size_t REF_DROP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 size_t FUNC13 (int /*<<< orphan*/ ) ; 
 size_t FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(jit_State *J, IRRef1 *subst, IRRef1 *phi, IRRef nphi,
			  SnapNo onsnap)
{
  int passx = 0;
  IRRef i, j, nslots;
  IRRef invar = J->chain[IR_LOOP];
  /* Pass #1: mark redundant and potentially redundant PHIs. */
  for (i = 0, j = 0; i < nphi; i++) {
    IRRef lref = phi[i];
    IRRef rref = subst[lref];
    if (lref == rref || rref == REF_DROP) {  /* Invariants are redundant. */
      FUNC5(FUNC0(lref)->t);
    } else {
      phi[j++] = (IRRef1)lref;
      if (!(FUNC0(rref)->op1 == lref || FUNC0(rref)->op2 == lref)) {
	/* Quick check for simple recurrences failed, need pass2. */
	FUNC9(FUNC0(lref)->t);
	passx = 1;
      }
    }
  }
  nphi = j;
  /* Pass #2: traverse variant part and clear marks of non-redundant PHIs. */
  if (passx) {
    SnapNo s;
    for (i = J->cur.nins-1; i > invar; i--) {
      IRIns *ir = FUNC0(i);
      if (!FUNC3(ir->op2)) FUNC4(FUNC0(ir->op2)->t);
      if (!FUNC3(ir->op1)) {
	FUNC4(FUNC0(ir->op1)->t);
	if (ir->op1 < invar &&
	    ir->o >= IR_CALLN && ir->o <= IR_CARG) {  /* ORDER IR */
	  ir = FUNC0(ir->op1);
	  while (ir->o == IR_CARG) {
	    if (!FUNC3(ir->op2)) FUNC4(FUNC0(ir->op2)->t);
	    if (FUNC3(ir->op1)) break;
	    ir = FUNC0(ir->op1);
	    FUNC4(ir->t);
	  }
	}
      }
    }
    for (s = J->cur.nsnap-1; s >= onsnap; s--) {
      SnapShot *snap = &J->cur.snap[s];
      SnapEntry *map = &J->cur.snapmap[snap->mapofs];
      MSize n, nent = snap->nent;
      for (n = 0; n < nent; n++) {
	IRRef ref = FUNC13(map[n]);
	if (!FUNC3(ref)) FUNC4(FUNC0(ref)->t);
      }
    }
  }
  /* Pass #3: add PHIs for variant slots without a corresponding SLOAD. */
  nslots = J->baseslot+J->maxslot;
  for (i = 1; i < nslots; i++) {
    IRRef ref = FUNC14(J->slot[i]);
    while (!FUNC3(ref) && ref != subst[ref]) {
      IRIns *ir = FUNC0(ref);
      FUNC4(ir->t);  /* Unmark potential uses, too. */
      if (FUNC7(ir->t) || FUNC8(ir->t))
	break;
      FUNC10(ir->t);
      if (nphi >= LJ_MAX_PHI)
	FUNC12(J, LJ_TRERR_PHIOV);
      phi[nphi++] = (IRRef1)ref;
      ref = subst[ref];
      if (ref > invar)
	break;
    }
  }
  /* Pass #4: propagate non-redundant PHIs. */
  while (passx) {
    passx = 0;
    for (i = 0; i < nphi; i++) {
      IRRef lref = phi[i];
      IRIns *ir = FUNC0(lref);
      if (!FUNC6(ir->t)) {  /* Propagate only from unmarked PHIs. */
	IRIns *irr = FUNC0(subst[lref]);
	if (FUNC6(irr->t)) {  /* Right ref points to other PHI? */
	  FUNC4(irr->t);  /* Mark that PHI as non-redundant. */
	  passx = 1;  /* Retry. */
	}
      }
    }
  }
  /* Pass #5: emit PHI instructions or eliminate PHIs. */
  for (i = 0; i < nphi; i++) {
    IRRef lref = phi[i];
    IRIns *ir = FUNC0(lref);
    if (!FUNC6(ir->t)) {  /* Emit PHI if not marked. */
      IRRef rref = subst[lref];
      if (rref > invar)
	FUNC10(FUNC0(rref)->t);
      FUNC2(FUNC1(IR_PHI, FUNC11(ir->t)), lref, rref);
    } else {  /* Otherwise eliminate PHI. */
      FUNC4(ir->t);
      FUNC5(ir->t);
    }
  }
}