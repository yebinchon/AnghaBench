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
 char* LUASOCKET_VERSION ; 
 int /*<<< orphan*/  func ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static int FUNC8(lua_State *L) {
    if (FUNC7()) {
        /* export functions (and leave namespace table on top of stack) */
#if LUA_VERSION_NUM > 501 && !defined(LUA_COMPAT_MODULE)
        lua_newtable(L);
        luaL_setfuncs(L, func, 0);
#else
        FUNC0(L, "socket", func, 0);
#endif
#ifdef LUASOCKET_DEBUG
        lua_pushstring(L, "_DEBUG");
        lua_pushboolean(L, 1);
        lua_rawset(L, -3);
#endif
        /* make version string available to scripts */
        FUNC5(L, "_VERSION");
        FUNC5(L, LUASOCKET_VERSION);
        FUNC6(L, -3);
        return 1;
    } else {
        FUNC5(L, "unable to initialize library");
        FUNC2(L);
        return 0;
    }
}