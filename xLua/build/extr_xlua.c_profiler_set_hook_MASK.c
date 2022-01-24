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
 int LUA_MASKCALL ; 
 int LUA_MASKRET ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  LUA_TFUNCTION ; 
 int /*<<< orphan*/  hook ; 
 int /*<<< orphan*/  hook_index ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(lua_State *L) {
	if (FUNC1(L, 1)) {
		FUNC2(L, &hook_index);
		FUNC3(L);
		FUNC5(L, LUA_REGISTRYINDEX);
			
		FUNC6(L, 0, 0, 0);
	} else {
		FUNC0(L, 1, LUA_TFUNCTION);
		FUNC2(L, &hook_index);
		FUNC4(L, 1);
		FUNC5(L, LUA_REGISTRYINDEX);
		FUNC6(L, hook, LUA_MASKCALL | LUA_MASKRET, 0);
	}
	return 0;
}