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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  headers_metatable_key ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

void
FUNC9(ngx_log_t *log, lua_State *L)
{
    int rc;
    const char buf[] =
        "local tb, key = ...\n"
        "local new_key = string.gsub(string.lower(key), '_', '-')\n"
        "if new_key ~= key then return tb[new_key] else return nil end";

    FUNC3(L, FUNC7(
                          headers_metatable_key));

    /* metatable for ngx.req.get_headers(_, true) and
     * ngx.resp.get_headers(_, true) */
    FUNC1(L, 0, 1);

    rc = FUNC0(L, buf, sizeof(buf) - 1, "=headers metatable");
    if (rc != 0) {
        FUNC8(NGX_LOG_ERR, log, 0,
                      "failed to load Lua code for the metamethod for "
                      "headers: %i: %s", rc, FUNC6(L, -1));

        FUNC2(L, 3);
        return;
    }

    FUNC5(L, -2, "__index");
    FUNC4(L, LUA_REGISTRYINDEX);
}