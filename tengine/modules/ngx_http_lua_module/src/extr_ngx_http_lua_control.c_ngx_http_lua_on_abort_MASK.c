#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_9__ {int /*<<< orphan*/  check_client_abort; } ;
typedef  TYPE_1__ ngx_http_lua_loc_conf_t ;
struct TYPE_10__ {int /*<<< orphan*/  cur_co_ctx; TYPE_3__* on_abort_co_ctx; } ;
typedef  TYPE_2__ ngx_http_lua_ctx_t ;
struct TYPE_11__ {int is_uthread; int /*<<< orphan*/  parent_co_ctx; int /*<<< orphan*/  co_status; int /*<<< orphan*/  co; int /*<<< orphan*/  co_ref; } ;
typedef  TYPE_3__ ngx_http_lua_co_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_CO_SUSPENDED ; 
 int /*<<< orphan*/  coroutines_key ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__**) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 

__attribute__((used)) static int
FUNC17(lua_State *L)
{
    ngx_http_request_t           *r;
    ngx_http_lua_ctx_t           *ctx;
    ngx_http_lua_co_ctx_t        *coctx = NULL;
    ngx_http_lua_loc_conf_t      *llcf;

    r = FUNC15(L);
    if (r == NULL) {
        return FUNC1(L, "no request found");
    }

    ctx = FUNC11(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC1(L, "no request ctx found");
    }

    FUNC13(L, r, ctx);

    if (ctx->on_abort_co_ctx) {
        FUNC7(L);
        FUNC6(L, "duplicate call");
        return 2;
    }

    llcf = FUNC12(r, ngx_http_lua_module);
    if (!llcf->check_client_abort) {
        FUNC7(L);
        FUNC6(L, "lua_check_client_abort is off");
        return 2;
    }

    FUNC14(L, r, ctx, &coctx);

    FUNC5(L, FUNC16(
                          coroutines_key));
    FUNC9(L, LUA_REGISTRYINDEX);
    FUNC8(L, -2);

    FUNC0("on_wait thread 1: %p", FUNC10(L, -1));

    coctx->co_ref = FUNC2(L, -2);
    FUNC3(L, 1);

    coctx->is_uthread = 1;
    ctx->on_abort_co_ctx = coctx;

    FUNC0("on_wait thread 2: %p", coctx->co);

    coctx->co_status = NGX_HTTP_LUA_CO_SUSPENDED;
    coctx->parent_co_ctx = ctx->cur_co_ctx;

    FUNC4(L, 1);
    return 1;
}