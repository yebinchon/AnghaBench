#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_20__ {int freeset; scalar_t__* phireg; } ;
struct TYPE_19__ {size_t r; scalar_t__ o; int /*<<< orphan*/  t; int /*<<< orphan*/  i; } ;
struct TYPE_18__ {int /*<<< orphan*/  u64; } ;
typedef  size_t Reg ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 scalar_t__ IR_KGC ; 
 scalar_t__ IR_KINT ; 
 scalar_t__ IR_KINT64 ; 
 scalar_t__ IR_KKPTR ; 
 scalar_t__ IR_KNULL ; 
 scalar_t__ IR_KNUM ; 
 scalar_t__ IR_KPRI ; 
 scalar_t__ IR_KPTR ; 
 size_t RID_MAX_GPR ; 
 int RSET_FPR ; 
 int RSET_GPR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,size_t,size_t) ; 
 TYPE_10__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 size_t FUNC11 (TYPE_2__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (size_t) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,size_t) ; 
 scalar_t__ FUNC14 (size_t) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC17 (size_t,size_t) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(ASMState *as, Reg dest, IRRef lref)
{
  IRIns *ir = FUNC0(lref);
  Reg left = ir->r;
  if (FUNC14(left)) {
    if (FUNC7(lref)) {
      if (ir->o == IR_KNUM) {
	cTValue *tv = FUNC6(ir);
	/* FP remat needs a load except for +0. Still better than eviction. */
	if (FUNC18(tv) || !(as->freeset & RSET_FPR)) {
	  FUNC2(as, dest, tv);
	  return;
	}
#if LJ_64
      } else if (ir->o == IR_KINT64) {
	emit_loadu64(as, dest, ir_kint64(ir)->u64);
	return;
#endif
      } else if (ir->o != IR_KPRI) {
	FUNC10(ir->o == IR_KINT || ir->o == IR_KGC ||
		   ir->o == IR_KPTR || ir->o == IR_KKPTR || ir->o == IR_KNULL);
	FUNC1(as, dest, ir->i);
	return;
      }
    }
    if (!FUNC12(left) && !FUNC9(as, lref))
      FUNC17(ir->r, dest);  /* Propagate register hint. */
    left = FUNC11(as, lref, dest < RID_MAX_GPR ? RSET_GPR : RSET_FPR);
  }
  FUNC15(as, left);
  /* Move needed for true 3-operand instruction: y=a+b ==> y=a; y+=b. */
  if (dest != left) {
    /* Use register renaming if dest is the PHI reg. */
    if (FUNC8(ir->t) && as->phireg[dest] == lref) {
      FUNC13(as, left);
      FUNC16(as, left, dest);
    } else {
      FUNC4(as, ir, dest, left);
    }
  }
}