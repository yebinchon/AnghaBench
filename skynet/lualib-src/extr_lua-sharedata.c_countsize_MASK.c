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
typedef  int lua_Integer ;

/* Variables and functions */
 int LUA_TNUMBER ; 
 int LUA_TSTRING ; 
 int LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC9(lua_State *L, int sizearray) {
	int n = 0;
	FUNC4(L);
	while (FUNC2(L, 1) != 0) {
		int type = FUNC7(L, -2);
		++n;
		if (type == LUA_TNUMBER) {
			if (!FUNC1(L, -2)) {
				FUNC0(L, "Invalid key %f", FUNC6(L, -2));
			}
			lua_Integer nkey = FUNC5(L, -2);
			if (nkey > 0 && nkey <= sizearray) {
				--n;
			}
		} else if (type != LUA_TSTRING && type != LUA_TTABLE) {
			FUNC0(L, "Invalid key type %s", FUNC8(L, type));
		}
		FUNC3(L, 1);
	}

	return n;
}