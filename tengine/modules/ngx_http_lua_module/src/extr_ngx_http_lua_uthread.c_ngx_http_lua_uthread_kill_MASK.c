#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_10__ {int /*<<< orphan*/  uthreads; TYPE_2__* cur_co_ctx; } ;
typedef  TYPE_1__ ngx_http_lua_ctx_t ;
struct TYPE_11__ {scalar_t__ pending_subreqs; int co_status; struct TYPE_11__* parent_co_ctx; int /*<<< orphan*/  is_uthread; } ;
typedef  TYPE_2__ ngx_http_lua_co_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int NGX_HTTP_LUA_CONTEXT_ACCESS ; 
 int NGX_HTTP_LUA_CONTEXT_CONTENT ; 
 int NGX_HTTP_LUA_CONTEXT_REWRITE ; 
 int NGX_HTTP_LUA_CONTEXT_SSL_CERT ; 
 int NGX_HTTP_LUA_CONTEXT_TIMER ; 
#define  NGX_HTTP_LUA_CO_DEAD 129 
#define  NGX_HTTP_LUA_CO_ZOMBIE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 

__attribute__((used)) static int
FUNC12(lua_State *L)
{
    lua_State                   *sub_co;
    ngx_http_request_t          *r;
    ngx_http_lua_ctx_t          *ctx;
    ngx_http_lua_co_ctx_t       *coctx, *sub_coctx;

    r = FUNC11(L);
    if (r == NULL) {
        return FUNC1(L, "no request found");
    }

    ctx = FUNC6(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC1(L, "no request ctx found");
    }

    FUNC7(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT
                               | NGX_HTTP_LUA_CONTEXT_TIMER
                               | NGX_HTTP_LUA_CONTEXT_SSL_CERT);

    coctx = ctx->cur_co_ctx;

    sub_co = FUNC5(L, 1);
    FUNC0(L, sub_co, 1, "lua thread expected");

    sub_coctx = FUNC10(sub_co, ctx);

    if (sub_coctx == NULL) {
        return FUNC1(L, "no co ctx found");
    }

    if (!sub_coctx->is_uthread) {
        FUNC4(L);
        FUNC3(L, "not user thread");
        return 2;
    }

    if (sub_coctx->parent_co_ctx != coctx) {
        FUNC4(L);
        FUNC3(L, "killer not parent");
        return 2;
    }

    if (sub_coctx->pending_subreqs > 0) {
        FUNC4(L);
        FUNC3(L, "pending subrequests");
        return 2;
    }

    switch (sub_coctx->co_status) {
    case NGX_HTTP_LUA_CO_ZOMBIE:
        FUNC9(r, L, ctx, sub_coctx);
        ctx->uthreads--;

        FUNC4(L);
        FUNC3(L, "already terminated");
        return 2;

    case NGX_HTTP_LUA_CO_DEAD:
        FUNC4(L);
        FUNC3(L, "already waited or killed");
        return 2;

    default:
        FUNC8(sub_coctx);
        FUNC9(r, L, ctx, sub_coctx);
        ctx->uthreads--;

        FUNC2(L, 1);
        return 1;
    }

    /* not reacheable */
}