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
 scalar_t__ LUA_TNIL ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static int FUNC3 (lua_State *L) {
  const char *name = FUNC0(L, 1);
  FUNC1(L, LUA_REGISTRYINDEX, "_PRELOAD");
  if (FUNC1(L, -1, name) == LUA_TNIL)  /* not found? */
    FUNC2(L, "\n\tno field package.preload['%s']", name);
  return 1;
}