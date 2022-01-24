#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ci; int /*<<< orphan*/  base_ci; } ;
typedef  TYPE_1__ lua_State ;

/* Variables and functions */
 int LUA_YIELD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4 (lua_State *L, void *ud) {
  if (ud != NULL)  /* error status? */
    FUNC0(L, *(int *)ud);  /* finish 'lua_pcallk' callee */
  while (L->ci != &L->base_ci) {  /* something in the stack */
    if (!FUNC1(L->ci))  /* C function? */
      FUNC0(L, LUA_YIELD);  /* complete its execution */
    else {  /* Lua function */
      FUNC3(L);  /* finish interrupted instruction */
      FUNC2(L);  /* execute down to higher C 'boundary' */
    }
  }
}