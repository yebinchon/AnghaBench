#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_http_request_t ;
typedef  int /*<<< orphan*/  ngx_http_lua_ctx_t ;
struct TYPE_6__ {int co_top; int /*<<< orphan*/  co_status; int /*<<< orphan*/ * co; int /*<<< orphan*/  co_ref; } ;
typedef  TYPE_1__ ngx_http_lua_co_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_NOREF ; 
 int NGX_HTTP_LUA_CONTEXT_ACCESS ; 
 int NGX_HTTP_LUA_CONTEXT_CONTENT ; 
 int NGX_HTTP_LUA_CONTEXT_REWRITE ; 
 int NGX_HTTP_LUA_CONTEXT_SSL_CERT ; 
 int NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH ; 
 int NGX_HTTP_LUA_CONTEXT_TIMER ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_CO_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 

int
FUNC16(lua_State *L, ngx_http_request_t *r,
    ngx_http_lua_ctx_t *ctx, ngx_http_lua_co_ctx_t **pcoctx)
{
    lua_State                     *vm;  /* the Lua VM */
    lua_State                     *co;  /* new coroutine to be created */
    ngx_http_lua_co_ctx_t         *coctx; /* co ctx for the new coroutine */

    FUNC0(L, FUNC3(L, 1) && !FUNC2(L, 1), 1,
                  "Lua function expected");

    FUNC7(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT
                               | NGX_HTTP_LUA_CONTEXT_TIMER
                               | NGX_HTTP_LUA_CONTEXT_SSL_CERT
                               | NGX_HTTP_LUA_CONTEXT_SSL_SESS_FETCH);

    vm = FUNC11(r, ctx);

    /* create new coroutine on root Lua state, so it always yields
     * to main Lua thread
     */
    co = FUNC4(vm);

    FUNC12(r, L, co);

    coctx = FUNC9(co, ctx);
    if (coctx == NULL) {
        coctx = FUNC8(r, ctx);
        if (coctx == NULL) {
            return FUNC1(L, "no memory");
        }

    } else {
        FUNC15(coctx, sizeof(ngx_http_lua_co_ctx_t));
        coctx->co_ref = LUA_NOREF;
    }

    coctx->co = co;
    coctx->co_status = NGX_HTTP_LUA_CO_SUSPENDED;

#ifdef OPENRESTY_LUAJIT
    ngx_http_lua_set_req(co, r);
#else
    /* make new coroutine share globals of the parent coroutine.
     * NOTE: globals don't have to be separated! */
    FUNC10(L);
    FUNC6(L, co, 1);
    FUNC13(co);
#endif

    FUNC6(vm, L, 1);    /* move coroutine from main thread to L */

    FUNC5(L, 1);    /* copy entry function to top of L*/
    FUNC6(L, co, 1);    /* move entry function from L to co */

    if (pcoctx) {
        *pcoctx = coctx;
    }

#ifdef NGX_LUA_USE_ASSERT
    coctx->co_top = 1;
#endif

    return 1;    /* return new coroutine to Lua */
}