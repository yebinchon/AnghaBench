#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_4__* ir; } ;
struct TYPE_11__ {int* chain; TYPE_1__ cur; } ;
typedef  TYPE_3__ jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_10__ {int /*<<< orphan*/  irt; } ;
struct TYPE_12__ {int prev; size_t o; TYPE_2__ t; int /*<<< orphan*/  ptr; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  int /*<<< orphan*/  IRType ;
typedef  int IRRef1 ;
typedef  int IRRef ;
typedef  size_t IROp ;
typedef  TYPE_4__ IRIns ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int) ; 
 int /*<<< orphan*/  IRT_I64 ; 
 int /*<<< orphan*/  IRT_NUM ; 
 size_t IR_KNUM ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

TRef FUNC7(jit_State *J, IROp op, cTValue *tv)
{
  IRIns *ir, *cir = J->cur.ir;
  IRRef ref;
  IRType t = op == IR_KNUM ? IRT_NUM : IRT_I64;
  for (ref = J->chain[op]; ref; ref = cir[ref].prev)
    if (FUNC3(&cir[ref]) == tv)
      goto found;
  ref = FUNC4(J);
  ir = FUNC0(ref);
  FUNC5(FUNC2(tv));
  FUNC6(ir->ptr, tv);
  ir->t.irt = t;
  ir->o = op;
  ir->prev = J->chain[op];
  J->chain[op] = (IRRef1)ref;
found:
  return FUNC1(ref, t);
}