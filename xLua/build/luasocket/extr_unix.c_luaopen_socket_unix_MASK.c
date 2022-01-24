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
 int /*<<< orphan*/  global_create ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unix_methods ; 

int FUNC4(lua_State *L) {
    /* create classes */
    FUNC1(L, "unix{master}", unix_methods);
    FUNC1(L, "unix{client}", unix_methods);
    FUNC1(L, "unix{server}", unix_methods);
    /* create class groups */
    FUNC0(L, "unix{master}", "unix{any}");
    FUNC0(L, "unix{client}", "unix{any}");
    FUNC0(L, "unix{server}", "unix{any}");
#if LUA_VERSION_NUM > 501 && !defined(LUA_COMPAT_MODULE)
    lua_pushcfunction(L, global_create);
    (void) func;
#else
    /* set function into socket namespace */
    FUNC2(L, "socket", func, 0);
    FUNC3(L, global_create);
#endif
    /* return the function instead of the 'socket' table */
    return 1;
}