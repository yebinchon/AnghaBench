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
typedef  int /*<<< orphan*/  ngx_http_request_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(lua_State *L, ngx_http_request_t *r)
{
    FUNC6(L, r);

#ifndef OPENRESTY_LUAJIT
    /**
     * we want to create empty environment for current script
     *
     * newt = {}
     * newt["_G"] = newt
     * setmetatable(newt, {__index = _G})
     *
     * if a function or symbol is not defined in our env, __index will lookup
     * in the global env.
     *
     * all variables created in the script-env will be thrown away at the end
     * of the script run.
     * */
    FUNC4(L, 0 /* narr */, 1 /* nrec */);

    /*  {{{ make new env inheriting main thread's globals table */
    FUNC0(L, 0, 1 /* nrec */);   /* the metatable for the new env */
    FUNC5(L);
    FUNC2(L, -2, "__index");
    FUNC3(L, -2);    /*  setmetatable({}, {__index = _G}) */
    /*  }}} */

    FUNC1(L, -2);    /*  set new running env for the code closure */
#endif /* OPENRESTY_LUAJIT */
}