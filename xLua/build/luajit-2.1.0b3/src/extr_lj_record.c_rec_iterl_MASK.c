#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int maxslot; int /*<<< orphan*/ * pc; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  LoopEvent ;
typedef  int BCReg ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 int /*<<< orphan*/  LOOPEV_ENTER ; 
 int /*<<< orphan*/  LOOPEV_LEAVE ; 
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LoopEvent FUNC5(jit_State *J, const BCIns iterins)
{
  BCReg ra = FUNC0(iterins);
  if (!FUNC4(FUNC3(J, ra))) {  /* Looping back? */
    J->base[ra-1] = J->base[ra];  /* Copy result of ITERC to control var. */
    J->maxslot = ra-1+FUNC1(J->pc[-1]);
    J->pc += FUNC2(iterins)+1;
    return LOOPEV_ENTER;
  } else {
    J->maxslot = ra-3;
    J->pc++;
    return LOOPEV_LEAVE;
  }
}