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
 int CACHE_ON ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int LUA_TNUMBER ; 
 int /*<<< orphan*/  cache_key ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(lua_State *L) {
	int t = FUNC1(L, LUA_REGISTRYINDEX, &cache_key);
	int r = FUNC2(L, -1);
	FUNC0(L,1);
	if (t == LUA_TNUMBER) {
		return r;
	}
	return CACHE_ON;
}