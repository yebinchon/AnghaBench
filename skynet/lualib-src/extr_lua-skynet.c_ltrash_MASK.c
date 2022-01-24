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
#define  LUA_TLIGHTUSERDATA 129 
#define  LUA_TSTRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

__attribute__((used)) static int
FUNC6(lua_State *L) {
	int t = FUNC3(L,1);
	switch (t) {
	case LUA_TSTRING: {
		break;
	}
	case LUA_TLIGHTUSERDATA: {
		void * msg = FUNC2(L,1);
		FUNC0(L,2);
		FUNC5(msg);
		break;
	}
	default:
		FUNC1(L, "skynet.trash invalid param %s", FUNC4(L,t));
	}

	return 0;
}