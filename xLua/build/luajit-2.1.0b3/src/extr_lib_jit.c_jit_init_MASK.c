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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  param; } ;
typedef  TYPE_1__ jit_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int JIT_F_ON ; 
 int JIT_F_OPT_DEFAULT ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jit_param_default ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(lua_State *L)
{
  uint32_t flags = FUNC3(L);
#if LJ_HASJIT
  jit_State *J = L2J(L);
  J->flags = flags | JIT_F_ON | JIT_F_OPT_DEFAULT;
  memcpy(J->param, jit_param_default, sizeof(J->param));
  lj_dispatch_update(G(L));
#else
  FUNC2(flags);
#endif
}