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
 int FUNC0 (int /*<<< orphan*/ *,int,char*,char const**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(lua_State *L) {
	static const char * lst[] = {
		"OFF",
		"EXIST",
		"ON",
		NULL,
	};
	if (FUNC1(L,1)) {
		int t = FUNC4(L, LUA_REGISTRYINDEX, &cache_key);
		int r = FUNC6(L, -1);
		if (t == LUA_TNUMBER) {
			if (r < 0  || r >= CACHE_ON) {
				r = CACHE_ON;
			}
		} else {
			r = CACHE_ON;
		}
		FUNC3(L, lst[r]);
		return 1;
	}
	int t = FUNC0(L, 1, "OFF" , lst);
	FUNC2(L, t);
	FUNC5(L, LUA_REGISTRYINDEX, &cache_key);
	return 0;
}