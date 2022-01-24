#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_8__ {TYPE_2__* cur_co_ctx; int /*<<< orphan*/  co_op; int /*<<< orphan*/  uthreads; } ;
typedef  TYPE_1__ ngx_http_lua_ctx_t ;
struct TYPE_9__ {int is_uthread; int thread_spawn_yielded; int /*<<< orphan*/  co; struct TYPE_9__* parent_co_ctx; int /*<<< orphan*/  co_status; int /*<<< orphan*/  co_ref; } ;
typedef  TYPE_2__ ngx_http_lua_co_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_CO_RUNNING ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_USER_THREAD_RESUME ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  coroutines_key ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__**) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(lua_State *L)
{
    int                           n;
    ngx_http_request_t           *r;
    ngx_http_lua_ctx_t           *ctx;
    ngx_http_lua_co_ctx_t        *coctx = NULL;

    n = FUNC4(L);

    r = FUNC14(L);
    if (r == NULL) {
        return FUNC1(L, "no request found");
    }

    ctx = FUNC12(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC1(L, "no request ctx found");
    }

    FUNC13(L, r, ctx, &coctx);

    /* anchor the newly created coroutine into the Lua registry */

    FUNC6(L, FUNC15(
                          coroutines_key));
    FUNC8(L, LUA_REGISTRYINDEX);
    FUNC7(L, -2);
    coctx->co_ref = FUNC2(L, -2);
    FUNC5(L, 1);

    if (n > 1) {
        FUNC9(L, 1);
        FUNC10(L, coctx->co, n - 1);
    }

    coctx->is_uthread = 1;
    ctx->uthreads++;

    coctx->co_status = NGX_HTTP_LUA_CO_RUNNING;
    ctx->co_op = NGX_HTTP_LUA_USER_THREAD_RESUME;

    ctx->cur_co_ctx->thread_spawn_yielded = 1;

    if (FUNC16(r, ctx, ctx->cur_co_ctx) != NGX_OK) {
        return FUNC1(L, "no memory");
    }

    coctx->parent_co_ctx = ctx->cur_co_ctx;
    ctx->cur_co_ctx = coctx;

    FUNC17(r, L, coctx->co);

    FUNC0("yielding with arg %s, top=%d, index-1:%s", FUNC3(L, -1),
       (int) FUNC4(L), FUNC3(L, 1));
    return FUNC11(L, 1);
}