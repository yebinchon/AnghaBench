#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_15__ {int len; TYPE_3__* data; } ;
struct TYPE_17__ {int co_ref; int /*<<< orphan*/ * pool; int /*<<< orphan*/  delay; int /*<<< orphan*/ * co; TYPE_2__* vm_state; TYPE_1__ client_addr_text; TYPE_4__* lmcf; } ;
typedef  TYPE_3__ ngx_http_lua_timer_ctx_t ;
struct TYPE_18__ {int /*<<< orphan*/  pending_timers; int /*<<< orphan*/ * lua; } ;
typedef  TYPE_4__ ngx_http_lua_main_conf_t ;
struct TYPE_19__ {int /*<<< orphan*/  log; TYPE_3__* data; int /*<<< orphan*/  handler; } ;
typedef  TYPE_5__ ngx_event_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_16__ {int /*<<< orphan*/  count; int /*<<< orphan*/ * vm; } ;
struct TYPE_14__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  coroutines_key ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int,int /*<<< orphan*/ ) ; 
 TYPE_12__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_timer_handler ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_5__*,int) ; 
 TYPE_3__* FUNC25 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ngx_int_t
FUNC26(ngx_http_lua_timer_ctx_t *old_tctx)
{
    int                          nargs, co_ref, i;
    u_char                      *p;
    lua_State                   *vm;  /* the main thread */
    lua_State                   *co;
    lua_State                   *L;
    ngx_event_t                 *ev = NULL;
    ngx_http_lua_timer_ctx_t    *tctx = NULL;
    ngx_http_lua_main_conf_t    *lmcf;

    /* L stack: func [args] */
    L = old_tctx->co;

    lmcf = old_tctx->lmcf;

    vm = old_tctx->vm_state ? old_tctx->vm_state->vm : lmcf->lua;

    co = FUNC5(vm);

#ifndef OPENRESTY_LUAJIT
    FUNC3(co, 0, 0);  /* the new globals table */

    /* co stack: global_tb */

    FUNC3(co, 0, 1);  /* the metatable */
    FUNC19(co);
    FUNC11(co, -2, "__index");
    FUNC12(co, -2);

    /* co stack: global_tb */

    FUNC21(co);
#endif

    /* co stack: <empty> */

    FUNC0("stack top: %d", FUNC4(L));

    FUNC13(vm, L, 1);    /* move coroutine from main thread to L */

    /* L stack: func [args] thread */
    /* vm stack: empty */

    FUNC8(L, 1);    /* copy entry function to top of L*/

    /* L stack: func [args] thread func */

    FUNC13(L, co, 1);    /* move entry function from L to co */

    /* L stack: func [args] thread */
    /* co stack: func */

#ifndef OPENRESTY_LUAJIT
    FUNC19(co);
    FUNC10(co, -2);
#endif

    /* co stack: func */

    FUNC7(L, FUNC20(
                          coroutines_key));
    FUNC9(L, LUA_REGISTRYINDEX);

    /* L stack: func [args] thread coroutines */

    FUNC8(L, -2);

    /* L stack: func [args] thread coroutines thread */

    co_ref = FUNC1(L, -2);
    FUNC6(L, 2);

    /* L stack: func [args] */

    nargs = FUNC4(L);
    if (nargs > 1) {
        for (i = 2; i <= nargs; i++) {
            FUNC8(L, i);
        }

        /* L stack: func [args] [args] */

        FUNC13(L, co, nargs - 1);

        /* L stack: func [args] */
        /* co stack: func [args] */
    }

    p = FUNC15(sizeof(ngx_event_t) + sizeof(ngx_http_lua_timer_ctx_t),
                  ngx_cycle->log);
    if (p == NULL) {
        goto nomem;
    }

    ev = (ngx_event_t *) p;

    FUNC24(ev, sizeof(ngx_event_t));

    p += sizeof(ngx_event_t);

    tctx = (ngx_http_lua_timer_ctx_t *) p;

    FUNC23(tctx, old_tctx, sizeof(ngx_http_lua_timer_ctx_t));

    tctx->co_ref = co_ref;
    tctx->co = co;

    tctx->pool = FUNC16(128, ngx_cycle->log);
    if (tctx->pool == NULL) {
        goto nomem;
    }

    if (tctx->client_addr_text.len) {
        tctx->client_addr_text.data = FUNC25(tctx->pool,
                                                 tctx->client_addr_text.len);
        if (tctx->client_addr_text.data == NULL) {
            goto nomem;
        }

        FUNC23(tctx->client_addr_text.data, old_tctx->client_addr_text.data,
                   tctx->client_addr_text.len);
    }

    if (tctx->vm_state) {
        tctx->vm_state->count++;
    }

    ev->handler = ngx_http_lua_timer_handler;
    ev->data = tctx;
    ev->log = ngx_cycle->log;

    lmcf->pending_timers++;

    FUNC14(ev, tctx->delay);

    FUNC22(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "created next timer (co: %p delay: %M ms)", tctx->co,
                   tctx->delay);

    return NGX_OK;

nomem:

    if (tctx && tctx->pool) {
        FUNC17(tctx->pool);
    }

    if (ev) {
        FUNC18(ev);
    }

    /* L stack: func [args] */

    FUNC7(L, FUNC20(
                          coroutines_key));
    FUNC9(L, LUA_REGISTRYINDEX);
    FUNC2(L, -1, co_ref);

    /* L stack: func [args] coroutines */

    FUNC6(L, 1);

    return NGX_ERROR;
}