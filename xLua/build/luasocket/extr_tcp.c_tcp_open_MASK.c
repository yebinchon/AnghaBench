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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  func ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_methods ; 

int FUNC4(lua_State *L)
{
    /* create classes */
    FUNC1(L, "tcp{master}", tcp_methods);
    FUNC1(L, "tcp{client}", tcp_methods);
    FUNC1(L, "tcp{server}", tcp_methods);
    /* create class groups */
    FUNC0(L, "tcp{master}", "tcp{any}");
    FUNC0(L, "tcp{client}", "tcp{any}");
    FUNC0(L, "tcp{server}", "tcp{any}");
    /* define library functions */
#if LUA_VERSION_NUM > 501 && !defined(LUA_COMPAT_MODULE)
    luaL_setfuncs(L, func, 0);
#else
    FUNC2(L, NULL, func, 0);
#endif
    return 0;
}