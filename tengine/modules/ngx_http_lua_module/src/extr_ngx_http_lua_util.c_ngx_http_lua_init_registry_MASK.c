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
typedef  int /*<<< orphan*/  ngx_log_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  code_cache_key ; 
 int /*<<< orphan*/  coroutines_key ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_ctx_tables_key ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  regex_cache_key ; 
 int /*<<< orphan*/  socket_pool_key ; 

__attribute__((used)) static void
FUNC6(lua_State *L, ngx_log_t *log)
{
    FUNC5(NGX_LOG_DEBUG_HTTP, log, 0,
                   "lua initializing lua registry");

    /* {{{ register a table to anchor lua coroutines reliably:
     * {([int]ref) = [cort]} */
    FUNC1(L, FUNC4(
                          coroutines_key));
    FUNC0(L, 0, 32 /* nrec */);
    FUNC3(L, LUA_REGISTRYINDEX);
    /* }}} */

    /* create the registry entry for the Lua request ctx data table */
    FUNC2(L, ngx_http_lua_ctx_tables_key);
    FUNC0(L, 0, 32 /* nrec */);
    FUNC3(L, LUA_REGISTRYINDEX);

    /* create the registry entry for the Lua socket connection pool table */
    FUNC1(L, FUNC4(
                          socket_pool_key));
    FUNC0(L, 0, 8 /* nrec */);
    FUNC3(L, LUA_REGISTRYINDEX);

#if (NGX_PCRE)
    /* create the registry entry for the Lua precompiled regex object cache */
    lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                          regex_cache_key));
    lua_createtable(L, 0, 16 /* nrec */);
    lua_rawset(L, LUA_REGISTRYINDEX);
#endif

    /* {{{ register table to cache user code:
     * { [(string)cache_key] = <code closure> } */
    FUNC1(L, FUNC4(
                          code_cache_key));
    FUNC0(L, 0, 8 /* nrec */);
    FUNC3(L, LUA_REGISTRYINDEX);
    /* }}} */
}