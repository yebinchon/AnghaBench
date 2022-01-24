#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  state; int /*<<< orphan*/  L; int /*<<< orphan*/  fn; int /*<<< orphan*/ * pt; int /*<<< orphan*/  const* pc; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_TRACE_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_state ; 

void FUNC4(jit_State *J, const BCIns *pc)
{
  /* Note: J->L must already be set. pc is the true bytecode PC here. */
  J->pc = pc;
  J->fn = FUNC0(J->L);
  J->pt = FUNC2(J->fn) ? FUNC1(J->fn) : NULL;
  while (FUNC3(J->L, NULL, (void *)J, trace_state) != 0)
    J->state = LJ_TRACE_ERR;
}