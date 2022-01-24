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
typedef  int ptrdiff_t ;
struct TYPE_6__ {int /*<<< orphan*/ * top; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_7__ {scalar_t__ framedepth; int maxslot; int /*<<< orphan*/  const* pc; int /*<<< orphan*/ * base; int /*<<< orphan*/  baseslot; TYPE_1__* L; } ;
typedef  TYPE_2__ jit_State ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TRef ;
typedef  int BCReg ;
typedef  int /*<<< orphan*/  const BCIns ;

/* Variables and functions */
 int LJ_FR2 ; 
 int /*<<< orphan*/  LJ_TRERR_NYICALL ; 
 int /*<<< orphan*/  TREF_FALSE ; 
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(jit_State *J)
{
  lua_State *L = J->L;
  TValue *base = L->base, *top = L->top;
  const BCIns *pc = J->pc;
  TRef ftr = J->base[-1];
  ptrdiff_t delta;
  if (!FUNC1(base-1) || J->framedepth <= 0)
    FUNC4(J, LJ_TRERR_NYICALL);
  J->pc = FUNC2(base-1); delta = 1+LJ_FR2+FUNC0(J->pc[-1]);
  L->top = base; L->base = base - delta;
  J->base[-1] = TREF_FALSE;
  J->base -= delta; J->baseslot -= (BCReg)delta;
  J->maxslot = (BCReg)delta; J->framedepth--;
  FUNC3(J);
  L->base = base; L->top = top;
  J->framedepth++; J->maxslot = 1;
  J->base += delta; J->baseslot += (BCReg)delta;
  J->base[-1] = ftr; J->pc = pc;
}