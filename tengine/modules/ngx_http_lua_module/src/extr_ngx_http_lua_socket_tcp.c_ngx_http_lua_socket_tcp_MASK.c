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
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int NGX_HTTP_LUA_CONTEXT_ACCESS ; 
 int NGX_HTTP_LUA_CONTEXT_CONTENT ; 
 int NGX_HTTP_LUA_CONTEXT_REWRITE ; 
 int NGX_HTTP_LUA_CONTEXT_SSL_CERT ; 
 int NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH ; 
 int NGX_HTTP_LUA_CONTEXT_TIMER ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  tcp_socket_metatable_key ; 

__attribute__((used)) static int
FUNC11(lua_State *L)
{
    ngx_http_request_t      *r;
    ngx_http_lua_ctx_t      *ctx;

    if (FUNC3(L) != 0) {
        return FUNC1(L, "expecting zero arguments, but got %d",
                          FUNC3(L));
    }

    r = FUNC9(L);
    if (r == NULL) {
        return FUNC1(L, "no request found");
    }

    ctx = FUNC7(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC1(L, "no ctx found");
    }

    FUNC8(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT
                               | NGX_HTTP_LUA_CONTEXT_TIMER
                               | NGX_HTTP_LUA_CONTEXT_SSL_CERT
                               | NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH);

    FUNC2(L, 5 /* narr */, 1 /* nrec */);
    FUNC4(L, FUNC10(
                          tcp_socket_metatable_key));
    FUNC5(L, LUA_REGISTRYINDEX);
    FUNC6(L, -2);

    FUNC0("top: %d", FUNC3(L));

    return 1;
}