#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_9__ {int /*<<< orphan*/  uthreads; TYPE_2__* cur_co_ctx; } ;
typedef  TYPE_1__ ngx_http_lua_ctx_t ;
struct TYPE_10__ {int co_status; int waited_by_parent; int /*<<< orphan*/ * co; struct TYPE_10__* parent_co_ctx; int /*<<< orphan*/  is_uthread; } ;
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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(lua_State *L)
{
    int                          i, nargs, nrets;
    lua_State                   *sub_co;
    ngx_http_request_t          *r;
    ngx_http_lua_ctx_t          *ctx;
    ngx_http_lua_co_ctx_t       *coctx, *sub_coctx;

    r = FUNC15(L);
    if (r == NULL) {
        return FUNC2(L, "no request found");
    }

    ctx = FUNC11(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC2(L, "no request ctx found");
    }

    FUNC12(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT
                               | NGX_HTTP_LUA_CONTEXT_TIMER
                               | NGX_HTTP_LUA_CONTEXT_SSL_CERT);

    coctx = ctx->cur_co_ctx;

    nargs = FUNC4(L);

    for (i = 1; i <= nargs; i++) {
        sub_co = FUNC8(L, i);

        FUNC1(L, sub_co, i, "lua thread expected");

        sub_coctx = FUNC14(sub_co, ctx);
        if (sub_coctx == NULL) {
            return FUNC2(L, "no co ctx found");
        }

        if (!sub_coctx->is_uthread) {
            return FUNC2(L, "attempt to wait on a coroutine that is "
                              "not a user thread");
        }

        if (sub_coctx->parent_co_ctx != coctx) {
            return FUNC2(L, "only the parent coroutine can wait on the "
                              "thread");
        }

        switch (sub_coctx->co_status) {
        case NGX_HTTP_LUA_CO_ZOMBIE:

            FUNC16("found zombie child");

            nrets = FUNC4(sub_coctx->co);

            FUNC0("child retval count: %d, %s: %s", (int) nrets,
               FUNC3(sub_coctx->co, -1),
               FUNC7(sub_coctx->co, -1));

            if (nrets) {
                FUNC9(sub_coctx->co, L, nrets);
            }

#if 1
            FUNC13(r, L, ctx, sub_coctx);
            ctx->uthreads--;
#endif

            return nrets;

        case NGX_HTTP_LUA_CO_DEAD:
            FUNC0("uthread already waited: %p (parent %p)", sub_coctx,
               coctx);

            if (i < nargs) {
                /* just ignore it if it is not the last one */
                continue;
            }

            /* being the last one */
            FUNC6(L);
            FUNC5(L, "already waited or killed");
            return 2;

        default:
            FUNC0("uthread %p still alive, status: %d, parent %p", sub_coctx,
               sub_coctx->co_status, coctx);
            break;
        }

        FUNC17(L, sub_coctx->co);
        sub_coctx->waited_by_parent = 1;
    }

    return FUNC10(L, 0);
}