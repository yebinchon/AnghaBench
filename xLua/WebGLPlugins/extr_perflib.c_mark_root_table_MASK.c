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
 scalar_t__ LUA_TTABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(lua_State* L, lua_State* dL, int type) {
	int len = 0;
	
	FUNC2(L);
	while (FUNC0(L, -2) != 0) {
		++len;
		if (LUA_TTABLE == FUNC6(L, -1)) {
			FUNC3(L, -2);
			
			FUNC7(dL, FUNC4(L, -2), FUNC5(L, -1), type, NULL, 1);
			FUNC1(L, 1);
			FUNC9(L, dL);
			FUNC1(dL, 1);
		} else {
		    FUNC7(dL, FUNC4(L, -1), "FUNCTION", type, NULL, 0);
			FUNC8(L, dL);
			FUNC1(dL, 1);
		}
		FUNC1(L, 1);
		
		FUNC7(dL, FUNC4(L, -1), "[KEY]", type, NULL, LUA_TTABLE == FUNC6(L, -1));
		FUNC8(L, dL);
		FUNC1(dL, 1);
	}
	
	return len;
}