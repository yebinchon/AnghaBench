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
 int LUA_TBOOLEAN ; 
 int LUA_TSTRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC9(lua_State *L) {
	FUNC4(L);  /* first key */
	while (FUNC2(L, -2) != 0) {
		int keyt = FUNC7(L, -2);
		if (keyt != LUA_TSTRING) {
			FUNC1(stderr, "Invalid config table\n");
			FUNC0(1);
		}
		const char * key = FUNC6(L,-2);
		if (FUNC7(L,-1) == LUA_TBOOLEAN) {
			int b = FUNC5(L,-1);
			FUNC8(key,b ? "true" : "false" );
		} else {
			const char * value = FUNC6(L,-1);
			if (value == NULL) {
				FUNC1(stderr, "Invalid config table key = %s\n", key);
				FUNC0(1);
			}
			FUNC8(key,value);
		}
		FUNC3(L,1);
	}
	FUNC3(L,1);
}