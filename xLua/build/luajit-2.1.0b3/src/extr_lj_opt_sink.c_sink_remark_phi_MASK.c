#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ nins; } ;
struct TYPE_8__ {TYPE_1__ cur; } ;
typedef  TYPE_2__ jit_State ;
struct TYPE_10__ {int irt; } ;
struct TYPE_9__ {scalar_t__ o; scalar_t__ prev; TYPE_5__ t; scalar_t__ op2; scalar_t__ op1; } ;
typedef  TYPE_3__ IRIns ;

/* Variables and functions */
 TYPE_3__* FUNC0 (scalar_t__) ; 
 int IRT_MARK ; 
 scalar_t__ IR_PHI ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__) ; 

__attribute__((used)) static void FUNC2(jit_State *J)
{
  IRIns *ir;
  int remark;
  do {
    remark = 0;
    for (ir = FUNC0(J->cur.nins-1); ir->o == IR_PHI; ir--) {
      IRIns *irl = FUNC0(ir->op1), *irr = FUNC0(ir->op2);
      if (!((irl->t.irt ^ irr->t.irt) & IRT_MARK) && irl->prev == irr->prev)
	continue;
      remark |= (~(irl->t.irt & irr->t.irt) & IRT_MARK);
      FUNC1(FUNC0(ir->op1)->t);
      FUNC1(FUNC0(ir->op2)->t);
    }
  } while (remark);
}