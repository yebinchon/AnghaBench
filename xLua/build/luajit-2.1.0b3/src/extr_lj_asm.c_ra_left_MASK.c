#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int freeset; scalar_t__* phireg; } ;
struct TYPE_16__ {size_t r; scalar_t__ o; int /*<<< orphan*/  t; int /*<<< orphan*/  i; } ;
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
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 size_t FUNC9 (TYPE_2__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,size_t) ; 
 scalar_t__ FUNC12 (size_t) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC15 (size_t,size_t) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(ASMState *as, Reg dest, IRRef lref)
{
  IRIns *ir = FUNC0(lref);
  Reg left = ir->r;
  if (FUNC12(left)) {
    if (FUNC5(lref)) {
      if (ir->o == IR_KNUM) {
	/* FP remat needs a load except for +0. Still better than eviction. */
	if (FUNC16(FUNC4(ir)) || !(as->freeset & RSET_FPR)) {
	  FUNC2(as, dest, ir);
	  return;
	}
#if LJ_64
      } else if (ir->o == IR_KINT64) {
	emit_loadk64(as, dest, ir);
	return;
#if LJ_GC64
      } else if (ir->o == IR_KGC || ir->o == IR_KPTR || ir->o == IR_KKPTR) {
	emit_loadk64(as, dest, ir);
	return;
#endif
#endif
      } else if (ir->o != IR_KPRI) {
	FUNC8(ir->o == IR_KINT || ir->o == IR_KGC ||
		   ir->o == IR_KPTR || ir->o == IR_KKPTR || ir->o == IR_KNULL);
	FUNC1(as, dest, ir->i);
	return;
      }
    }
    if (!FUNC10(left) && !FUNC7(as, lref))
      FUNC15(ir->r, dest);  /* Propagate register hint. */
    left = FUNC9(as, lref, dest < RID_MAX_GPR ? RSET_GPR : RSET_FPR);
  }
  FUNC13(as, left);
  /* Move needed for true 3-operand instruction: y=a+b ==> y=a; y+=b. */
  if (dest != left) {
    /* Use register renaming if dest is the PHI reg. */
    if (FUNC6(ir->t) && as->phireg[dest] == lref) {
      FUNC11(as, left);
      FUNC14(as, left, dest);
    } else {
      FUNC3(as, ir, dest, left);
    }
  }
}