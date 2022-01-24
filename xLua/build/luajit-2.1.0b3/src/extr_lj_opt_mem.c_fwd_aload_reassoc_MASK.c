#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__* chain; } ;
typedef  TYPE_1__ jit_State ;
struct TYPE_9__ {scalar_t__ op1; } ;
struct TYPE_8__ {scalar_t__ op2; scalar_t__ o; scalar_t__ op1; scalar_t__ prev; int /*<<< orphan*/  i; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_2__ IRIns ;

/* Variables and functions */
 TYPE_2__* FUNC0 (scalar_t__) ; 
 scalar_t__ IR_ADD ; 
 size_t IR_AREF ; 
 TYPE_5__* fins ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static TRef FUNC3(jit_State *J)
{
  IRIns *irx = FUNC0(fins->op1);
  IRIns *key = FUNC0(irx->op2);
  if (key->o == IR_ADD && FUNC2(key->op2)) {
    IRIns *add2 = FUNC0(key->op1);
    if (add2->o == IR_ADD && FUNC2(add2->op2) &&
	FUNC0(key->op2)->i == -FUNC0(add2->op2)->i) {
      IRRef ref = J->chain[IR_AREF];
      IRRef lim = add2->op1;
      if (irx->op1 > lim) lim = irx->op1;
      while (ref > lim) {
	IRIns *ir = FUNC0(ref);
	if (ir->op1 == irx->op1 && ir->op2 == add2->op1)
	  return FUNC1(J, ref);
	ref = ir->prev;
      }
    }
  }
  return 0;
}