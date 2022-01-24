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
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/ * lua_CFunction ;
struct TYPE_3__ {scalar_t__ maxslot; } ;
typedef  TYPE_1__ jit_State ;
typedef  int /*<<< orphan*/  TValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,scalar_t__) ; 

__attribute__((used)) static TValue *FUNC2(lua_State *L, lua_CFunction dummy, void *ud)
{
  jit_State *J = (jit_State *)ud;
  FUNC1(J, 1, J->maxslot - 2);
  FUNC0(L); FUNC0(dummy);
  return NULL;
}