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
 int /*<<< orphan*/  LUA_TTABLE ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

__attribute__((used)) static int
FUNC10(lua_State *L) {
	FUNC1(L, 1, LUA_TTABLE);
	int n = FUNC5(L, 1);
	if (FUNC3(L, 2)) {
		FUNC7(L, 3);
		FUNC6(L, 1, n + 1);
		return 0;
	}
	void * buffer = FUNC8(L, 2);
	if (buffer == NULL)
		return FUNC2(L, "Need lightuserdata");
	int sz = FUNC0(L, 3);
	FUNC4(L, (const char *)buffer, sz);
	FUNC9((void *)buffer);
	FUNC6(L, 1, n+1);
	return 0;
}