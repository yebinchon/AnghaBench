#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_24__ {scalar_t__ o; int /*<<< orphan*/  r; } ;
struct TYPE_23__ {int /*<<< orphan*/  J; } ;
struct TYPE_20__ {int /*<<< orphan*/  marked; } ;
struct TYPE_22__ {TYPE_1__ gch; } ;
struct TYPE_21__ {int /*<<< orphan*/  op2; int /*<<< orphan*/  op1; } ;
typedef  int /*<<< orphan*/  Reg ;
typedef  int /*<<< orphan*/  MCLabel ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_2__ IRIns ;
typedef  TYPE_3__ GCobj ;
typedef  int /*<<< orphan*/  CCallInfo ;
typedef  TYPE_4__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  ASMREF_TMP1 ; 
 int /*<<< orphan*/  CC_Z ; 
 int /*<<< orphan*/  GChead ; 
 int /*<<< orphan*/  GCupval ; 
 TYPE_9__* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t IRCALL_lj_gc_barrieruv ; 
 scalar_t__ IR_UREFC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LJ_GC_BLACK ; 
 int /*<<< orphan*/  LJ_GC_WHITES ; 
 int RSET_GPR ; 
 int RSET_SCRATCH ; 
 int /*<<< orphan*/  XO_GROUP3b ; 
 int /*<<< orphan*/  XOg_TEST ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (TYPE_9__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lj_ir_callinfo ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  marked ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tv ; 

__attribute__((used)) static void FUNC17(ASMState *as, IRIns *ir)
{
  const CCallInfo *ci = &lj_ir_callinfo[IRCALL_lj_gc_barrieruv];
  IRRef args[2];
  MCLabel l_end;
  Reg obj;
  /* No need for other object barriers (yet). */
  FUNC11(FUNC0(ir->op1)->o == IR_UREFC);
  FUNC14(as, RSET_SCRATCH);
  l_end = FUNC4(as);
  args[0] = ASMREF_TMP1;  /* global_State *g */
  args[1] = ir->op1;      /* TValue *tv      */
  FUNC2(as, ci, args);
  FUNC5(as, FUNC15(as, ASMREF_TMP1), FUNC1(as->J));
  obj = FUNC0(ir->op1)->r;
  FUNC8(as, CC_Z, l_end);
  FUNC3(as, LJ_GC_WHITES);
  if (FUNC10(ir->op2)) {
    GCobj *vp = FUNC9(FUNC0(ir->op2));
    FUNC6(as, XO_GROUP3b, XOg_TEST, &vp->gch.marked);
  } else {
    Reg val = FUNC13(as, ir->op2, FUNC16(RSET_SCRATCH&RSET_GPR, obj));
    FUNC7(as, XO_GROUP3b, XOg_TEST, val, (int32_t)FUNC12(GChead, marked));
  }
  FUNC8(as, CC_Z, l_end);
  FUNC3(as, LJ_GC_BLACK);
  FUNC7(as, XO_GROUP3b, XOg_TEST, obj,
	    (int32_t)FUNC12(GCupval, marked)-(int32_t)FUNC12(GCupval, tv));
}