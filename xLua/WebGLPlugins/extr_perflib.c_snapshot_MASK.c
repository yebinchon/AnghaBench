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
 int /*<<< orphan*/  LUA_GLOBALSINDEX ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  LUA_RIDX_GLOBALS ; 
 int RT_GLOBAL ; 
 int RT_REGISTRY ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,void const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,char*) ; 
 void* FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC15(lua_State* L) {
	lua_State *dL = FUNC0();
	int len;
	const void * p;
	FUNC2(dL);
	
#if LUA_VERSION_NUM == 503
	lua_rawgeti(L, LUA_REGISTRYINDEX, LUA_RIDX_GLOBALS);
#else
	FUNC8(L, LUA_GLOBALSINDEX);
#endif
	FUNC14(L, dL, RT_GLOBAL);
	FUNC4(L, 1);
	
	FUNC8(L, LUA_REGISTRYINDEX);
	p = FUNC12(L, -1);
	len = FUNC14(L, dL, RT_REGISTRY);
	FUNC4(L, 1);
	
	FUNC13(L, dL);
	
	FUNC2(L);
	FUNC7(L, "[REGISTRY Level 1]");
	FUNC11(L, -2, "name");
	FUNC6(L, RT_REGISTRY);
	FUNC11(L, -2, "type");
	FUNC6(L, len);
	FUNC11(L, -2, "size");
	FUNC5(L, "%p", p);
	FUNC11(L, -2, "pointer");
	FUNC7(L, "");
	FUNC11(L, -2, "used_in");
	FUNC10(L, -2, FUNC3(L, -2) + 1);
	
	FUNC1(dL);
	
	return 1;
}