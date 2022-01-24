#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jit_State ;
struct TYPE_6__ {int val; } ;
struct TYPE_5__ {int o; int op1; int op2; int /*<<< orphan*/  t; } ;
typedef  int TRef ;
typedef  int IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ BPropEntry ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int IRCONV_DSH ; 
 int IRCONV_DSTMASK ; 
 int IRCONV_SEXT ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int IRT_INTP ; 
 int IR_ADD ; 
 int IR_ADDOV ; 
 int IR_CONV ; 
 scalar_t__ LJ_64 ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static TRef FUNC9(jit_State *J, TRef tr, int lastop, IRRef mode)
{
  IRRef ref = FUNC8(tr);
  IRIns *ir = FUNC0(ref);
  int op = ir->o;
  if (op >= IR_ADDOV && op <= lastop) {
    BPropEntry *bp = FUNC6(J, ref, mode);
    if (bp) {
      return FUNC2(bp->val, FUNC5(FUNC0(bp->val)->t));
    } else {
      IRRef op1 = ir->op1, op2 = ir->op2;  /* The IR may be reallocated. */
      op1 = FUNC9(J, op1, lastop, mode);
      op2 = FUNC9(J, op2, lastop, mode);
      tr = FUNC3(FUNC1(op - IR_ADDOV + IR_ADD,
		      ((mode & IRCONV_DSTMASK) >> IRCONV_DSH)), op1, op2);
      FUNC7(J, ref, FUNC8(tr), mode);
    }
  } else if (LJ_64 && (mode & IRCONV_SEXT) && !FUNC4(ir->t)) {
    tr = FUNC3(FUNC1(IR_CONV, IRT_INTP), tr, mode);
  }
  return tr;
}