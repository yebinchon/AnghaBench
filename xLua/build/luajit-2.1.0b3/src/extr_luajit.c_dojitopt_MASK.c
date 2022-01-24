#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC3(lua_State *L, const char *opt)
{
  FUNC0(L, LUA_REGISTRYINDEX, "_LOADED");
  FUNC0(L, -1, "jit.opt");  /* Get jit.opt.* module table. */
  FUNC1(L, -2);
  FUNC0(L, -1, "start");
  FUNC1(L, -2);
  return FUNC2(L, opt);
}