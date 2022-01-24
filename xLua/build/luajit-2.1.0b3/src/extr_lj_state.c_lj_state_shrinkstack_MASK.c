#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int stacksize; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_8__ {int /*<<< orphan*/  cur_L; int /*<<< orphan*/  jit_base; } ;
typedef  int MSize ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_1__*) ; 
 int LJ_STACK_EXTRA ; 
 int LJ_STACK_MAXEX ; 
 int LJ_STACK_START ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(lua_State *L, MSize used)
{
  if (L->stacksize > LJ_STACK_MAXEX)
    return;  /* Avoid stack shrinking while handling stack overflow. */
  if (4*used < L->stacksize &&
      2*(LJ_STACK_START+LJ_STACK_EXTRA) < L->stacksize &&
      /* Don't shrink stack of live trace. */
      (FUNC4(FUNC0(L)->jit_base) == NULL || FUNC2(L) != FUNC1(FUNC0(L)->cur_L)))
    FUNC3(L, L->stacksize >> 1);
}