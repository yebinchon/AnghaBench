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
struct TYPE_11__ {scalar_t__ nins; } ;
struct TYPE_12__ {TYPE_1__ cur; } ;
typedef  TYPE_2__ jit_State ;
struct TYPE_13__ {int o; int /*<<< orphan*/  t; scalar_t__ op2; scalar_t__ op1; int /*<<< orphan*/  prev; } ;
typedef  TYPE_3__ IRIns ;

/* Variables and functions */
 TYPE_3__* FUNC0 (scalar_t__) ; 
 scalar_t__ IRFL_TAB_META ; 
#define  IR_ALOAD 143 
#define  IR_ASTORE 142 
#define  IR_BASE 141 
#define  IR_CALLL 140 
#define  IR_CALLS 139 
#define  IR_CALLXS 138 
 int IR_CNEW ; 
#define  IR_CNEWI 137 
#define  IR_FLOAD 136 
#define  IR_FSTORE 135 
 int IR_HIOP ; 
#define  IR_HLOAD 134 
#define  IR_HSTORE 133 
#define  IR_PHI 132 
#define  IR_TBAR 131 
 int IR_TDUP ; 
 int IR_TNEW ; 
#define  IR_USTORE 130 
#define  IR_XLOAD 129 
#define  IR_XSTORE 128 
 int /*<<< orphan*/  LJ_32 ; 
 int /*<<< orphan*/  LJ_HASFFI ; 
 scalar_t__ REF_FIRST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(jit_State *J)
{
  IRIns *ir, *irlast = FUNC0(J->cur.nins-1);
  for (ir = irlast ; ; ir--) {
    switch (ir->o) {
    case IR_BASE:
      return;  /* Finished. */
    case IR_CALLL:  /* IRCALL_lj_tab_len */
    case IR_ALOAD: case IR_HLOAD: case IR_XLOAD: case IR_TBAR:
      FUNC4(FUNC0(ir->op1)->t);  /* Mark ref for remaining loads. */
      break;
    case IR_FLOAD:
      if (FUNC2(ir->t) || ir->op2 == IRFL_TAB_META)
	FUNC4(FUNC0(ir->op1)->t);  /* Mark table for remaining loads. */
      break;
    case IR_ASTORE: case IR_HSTORE: case IR_FSTORE: case IR_XSTORE: {
      IRIns *ira = FUNC5(J, ir);
      if (!ira || (FUNC3(ira->t) && !FUNC6(J, ira, ir->op2)))
	FUNC4(FUNC0(ir->op1)->t);  /* Mark ineligible ref. */
      FUNC4(FUNC0(ir->op2)->t);  /* Mark stored value. */
      break;
      }
#if LJ_HASFFI
    case IR_CNEWI:
      if (irt_isphi(ir->t) &&
	  (!sink_checkphi(J, ir, ir->op2) ||
	   (LJ_32 && ir+1 < irlast && (ir+1)->o == IR_HIOP &&
	    !sink_checkphi(J, ir, (ir+1)->op2))))
	irt_setmark(ir->t);  /* Mark ineligible allocation. */
      /* fallthrough */
#endif
    case IR_USTORE:
      FUNC4(FUNC0(ir->op2)->t);  /* Mark stored value. */
      break;
#if LJ_HASFFI
    case IR_CALLXS:
#endif
    case IR_CALLS:
      FUNC4(FUNC0(ir->op1)->t);  /* Mark (potentially) stored values. */
      break;
    case IR_PHI: {
      IRIns *irl = FUNC0(ir->op1), *irr = FUNC0(ir->op2);
      irl->prev = irr->prev = 0;  /* Clear PHI value counts. */
      if (irl->o == irr->o &&
	  (irl->o == IR_TNEW || irl->o == IR_TDUP ||
	   (LJ_HASFFI && (irl->o == IR_CNEW || irl->o == IR_CNEWI))))
	break;
      FUNC4(irl->t);
      FUNC4(irr->t);
      break;
      }
    default:
      if (FUNC2(ir->t) || FUNC1(ir->t)) {  /* Propagate mark. */
	if (ir->op1 >= REF_FIRST) FUNC4(FUNC0(ir->op1)->t);
	if (ir->op2 >= REF_FIRST) FUNC4(FUNC0(ir->op2)->t);
      }
      break;
    }
  }
}