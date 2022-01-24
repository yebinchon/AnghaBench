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
typedef  int /*<<< orphan*/  ngx_http_lua_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_LUA_CONTEXT_BODY_FILTER ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 

__attribute__((used)) static int
FUNC5(lua_State *L)
{
    ngx_http_lua_ctx_t          *ctx;
    ngx_http_request_t          *r;

    r = FUNC4(L);
    if (r == NULL) {
        return 0;
    }

    ctx = FUNC1(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC0(L, "ctx not found");
    }

    FUNC3(L, ctx, NGX_HTTP_LUA_CONTEXT_BODY_FILTER);

    return FUNC2(L, r, ctx);
}