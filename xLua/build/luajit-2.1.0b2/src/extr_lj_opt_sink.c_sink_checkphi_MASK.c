#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ loopref; } ;
typedef  TYPE_1__ jit_State ;
struct TYPE_8__ {scalar_t__ o; scalar_t__ op2; scalar_t__ op1; int /*<<< orphan*/  prev; int /*<<< orphan*/  t; } ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_2__ IRIns ;

/* Variables and functions */
 TYPE_2__* FUNC0 (scalar_t__) ; 
 scalar_t__ IRCONV_NUM_INT ; 
 scalar_t__ IR_CONV ; 
 scalar_t__ REF_FIRST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(jit_State *J, IRIns *ira, IRRef ref)
{
  if (ref >= REF_FIRST) {
    IRIns *ir = FUNC0(ref);
    if (FUNC1(ir->t) || (ir->o == IR_CONV && ir->op2 == IRCONV_NUM_INT &&
			     FUNC1(FUNC0(ir->op1)->t))) {
      ira->prev++;
      return 1;  /* Sinkable PHI. */
    }
    /* Otherwise the value must be loop-invariant. */
    return ref < J->loopref && !FUNC2(J, ref);
  }
  return 1;  /* Constant (non-PHI). */
}