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
struct TYPE_4__ {scalar_t__ stacksize; int top; int /*<<< orphan*/  stack; } ;
typedef  TYPE_1__ lua_State ;

/* Variables and functions */
 int LJ_STACK_MAX ; 
 scalar_t__ LJ_STACK_MAXEX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(lua_State *L)
{
  if (L->stacksize > LJ_STACK_MAXEX && L->top-FUNC1(L->stack) < LJ_STACK_MAX-1)
    FUNC0(L, LJ_STACK_MAX);
}