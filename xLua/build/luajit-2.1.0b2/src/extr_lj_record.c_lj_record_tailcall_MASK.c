#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptrdiff_t ;
struct TYPE_7__ {scalar_t__ framedepth; int maxslot; scalar_t__ tailcalled; scalar_t__ loopunroll; int /*<<< orphan*/ * base; int /*<<< orphan*/  baseslot; TYPE_1__* L; } ;
typedef  TYPE_2__ jit_State ;
struct TYPE_6__ {scalar_t__ base; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  size_t BCReg ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_TRERR_LUNROLL ; 
 int /*<<< orphan*/  LJ_TRERR_NYIRETL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 

void FUNC5(jit_State *J, BCReg func, ptrdiff_t nargs)
{
  FUNC4(J, func, nargs);
  if (FUNC1(J->L->base - 1)) {
    BCReg cbase = (BCReg)FUNC0(J->L->base - 1);
    if (--J->framedepth < 0)
      FUNC2(J, LJ_TRERR_NYIRETL);
    J->baseslot -= (BCReg)cbase;
    J->base -= cbase;
    func += cbase;
  }
  /* Move func + args down. */
  FUNC3(&J->base[-1], &J->base[func], sizeof(TRef)*(J->maxslot+1));
  /* Note: the new TREF_FRAME is now at J->base[-1] (even for slot #0). */
  /* Tailcalls can form a loop, so count towards the loop unroll limit. */
  if (++J->tailcalled > J->loopunroll)
    FUNC2(J, LJ_TRERR_LUNROLL);
}