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
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  code_cache_key ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC10(lua_State *L, const char *key)
{
#ifndef OPENRESTY_LUAJIT
    int rc;
#endif

    /*  get code cache table */
    FUNC4(L, FUNC9(
                          code_cache_key));
    FUNC6(L, LUA_REGISTRYINDEX);

    FUNC0("Code cache table to store: %p", FUNC8(L, -1));

    if (!FUNC1(L, -1)) {
        FUNC0("Error: code cache table to load did not exist!!");
        return NGX_ERROR;
    }

    FUNC5(L, -2); /* closure cache closure */
    FUNC7(L, -2, key); /* closure cache */

    /*  remove cache table, leave closure factory at top of stack */
    FUNC3(L, 1); /* closure */

#ifndef OPENRESTY_LUAJIT
    /*  call closure factory to generate new closure */
    rc = FUNC2(L, 0, 1, 0);
    if (rc != 0) {
        FUNC0("Error: failed to call closure factory!!");
        return NGX_ERROR;
    }
#endif

    return NGX_OK;
}