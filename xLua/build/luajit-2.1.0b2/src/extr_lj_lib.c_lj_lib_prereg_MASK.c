#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ top; } ;
typedef  TYPE_2__ lua_State ;
typedef  int /*<<< orphan*/  lua_CFunction ;
struct TYPE_8__ {int /*<<< orphan*/  env; } ;
struct TYPE_10__ {TYPE_1__ c; } ;
typedef  int /*<<< orphan*/  GCtab ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 TYPE_7__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(lua_State *L, const char *name, lua_CFunction f, GCtab *env)
{
  FUNC1(L, LUA_REGISTRYINDEX, "_PRELOAD", 4);
  FUNC2(L, f);
  /* NOBARRIER: The function is new (marked white). */
  FUNC5(FUNC0(L->top-1)->c.env, FUNC4(env));
  FUNC3(L, -2, name);
  L->top--;
}