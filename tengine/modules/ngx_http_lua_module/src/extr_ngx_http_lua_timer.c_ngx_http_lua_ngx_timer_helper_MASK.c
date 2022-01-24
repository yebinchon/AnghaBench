#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_9__ ;
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_22__ ;
typedef  struct TYPE_26__   TYPE_20__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ngx_socket_t ;
typedef  scalar_t__ ngx_msec_t ;
struct TYPE_32__ {TYPE_5__* connection; int /*<<< orphan*/  loc_conf; int /*<<< orphan*/  srv_conf; int /*<<< orphan*/  main_conf; } ;
typedef  TYPE_6__ ngx_http_request_t ;
struct TYPE_28__ {int /*<<< orphan*/ * data; scalar_t__ len; } ;
struct TYPE_33__ {int co_ref; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * co; TYPE_3__* vm_state; TYPE_2__ client_addr_text; int /*<<< orphan*/ * listening; TYPE_8__* lmcf; int /*<<< orphan*/  loc_conf; int /*<<< orphan*/  srv_conf; int /*<<< orphan*/  main_conf; scalar_t__ premature; scalar_t__ delay; } ;
typedef  TYPE_7__ ngx_http_lua_timer_ctx_t ;
struct TYPE_34__ {scalar_t__ pending_timers; scalar_t__ max_pending_timers; TYPE_20__* watcher; } ;
typedef  TYPE_8__ ngx_http_lua_main_conf_t ;
struct TYPE_35__ {TYPE_3__* vm_state; } ;
typedef  TYPE_9__ ngx_http_lua_ctx_t ;
typedef  int /*<<< orphan*/  ngx_http_core_main_conf_t ;
typedef  int /*<<< orphan*/  ngx_http_connection_t ;
struct TYPE_24__ {int /*<<< orphan*/  log; TYPE_7__* data; int /*<<< orphan*/  handler; } ;
typedef  TYPE_10__ ngx_event_t ;
typedef  int /*<<< orphan*/  ngx_connection_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_25__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_31__ {TYPE_1__ addr_text; int /*<<< orphan*/ * listening; int /*<<< orphan*/  log; } ;
struct TYPE_30__ {int /*<<< orphan*/  handler; } ;
struct TYPE_29__ {int /*<<< orphan*/  count; } ;
struct TYPE_27__ {int /*<<< orphan*/  log; int /*<<< orphan*/ ** files; } ;
struct TYPE_26__ {int idle; TYPE_8__* data; TYPE_4__* read; scalar_t__ fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  coroutines_key ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_10__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC23 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (int,int /*<<< orphan*/ ) ; 
 TYPE_22__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ ngx_exiting ; 
 int /*<<< orphan*/  FUNC26 (TYPE_10__*) ; 
 TYPE_20__* FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC28 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC29 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_abort_pending_timers ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC31 (TYPE_6__*,TYPE_9__*) ; 
 TYPE_6__* FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC34 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_timer_handler ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_10__*,int) ; 
 int /*<<< orphan*/ * FUNC40 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC41(lua_State *L, int every)
{
    int                      nargs, co_ref;
    u_char                  *p;
    lua_State               *vm;  /* the main thread */
    lua_State               *co;
    ngx_msec_t               delay;
    ngx_event_t             *ev = NULL;
    ngx_http_request_t      *r;
    ngx_connection_t        *saved_c = NULL;
    ngx_http_lua_ctx_t      *ctx;
#if 0
    ngx_http_connection_t   *hc;
#endif

    ngx_http_lua_timer_ctx_t      *tctx = NULL;
    ngx_http_lua_main_conf_t      *lmcf;
#if 0
    ngx_http_core_main_conf_t     *cmcf;
#endif

    nargs = FUNC7(L);
    if (nargs < 2) {
        return FUNC3(L, "expecting at least 2 arguments but got %d",
                          nargs);
    }

    delay = (ngx_msec_t) (FUNC2(L, 1) * 1000);

    if (every && delay == 0) {
        return FUNC3(L, "delay cannot be zero");
    }

    FUNC1(L, FUNC9(L, 2) && !FUNC8(L, 2), 2,
                  "Lua function expected");

    r = FUNC32(L);
    if (r == NULL) {
        return FUNC3(L, "no request");
    }

    ctx = FUNC28(r, ngx_http_lua_module);

    if (ngx_exiting && delay > 0) {
        FUNC15(L);
        FUNC14(L, "process exiting");
        return 2;
    }

    lmcf = FUNC29(r, ngx_http_lua_module);

    if (lmcf->pending_timers >= lmcf->max_pending_timers) {
        FUNC15(L);
        FUNC14(L, "too many pending timers");
        return 2;
    }

    if (lmcf->watcher == NULL) {
        /* create the watcher fake connection */

        FUNC36(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                       "lua creating fake watcher connection");

        if (ngx_cycle->files) {
            saved_c = ngx_cycle->files[0];
        }

        lmcf->watcher = FUNC27(0, ngx_cycle->log);

        if (ngx_cycle->files) {
            ngx_cycle->files[0] = saved_c;
        }

        if (lmcf->watcher == NULL) {
            return FUNC3(L, "no memory");
        }

        /* to work around the -1 check in ngx_worker_process_cycle: */
        lmcf->watcher->fd = (ngx_socket_t) -2;

        lmcf->watcher->idle = 1;
        lmcf->watcher->read->handler = ngx_http_lua_abort_pending_timers;
        lmcf->watcher->data = lmcf;
    }

    vm = FUNC31(r, ctx);

    co = FUNC10(vm);

    /* L stack: time func [args] */

    FUNC34(r, L, co);

#ifndef OPENRESTY_LUAJIT
    FUNC6(co, 0, 0);  /* the new globals table */

    /* co stack: global_tb */

    FUNC6(co, 0, 1);  /* the metatable */
    FUNC30(co);
    FUNC19(co, -2, "__index");
    FUNC20(co, -2);

    /* co stack: global_tb */

    FUNC35(co);
#endif

    /* co stack: <empty> */

    FUNC0("stack top: %d", FUNC7(L));

    FUNC21(vm, L, 1);    /* move coroutine from main thread to L */

    /* L stack: time func [args] thread */
    /* vm stack: empty */

    FUNC16(L, 2);    /* copy entry function to top of L*/

    /* L stack: time func [args] thread func */

    FUNC21(L, co, 1);    /* move entry function from L to co */

    /* L stack: time func [args] thread */
    /* co stack: func */

#ifndef OPENRESTY_LUAJIT
    FUNC30(co);
    FUNC18(co, -2);
#endif

    /* co stack: func */

    FUNC13(L, FUNC33(
                          coroutines_key));
    FUNC17(L, LUA_REGISTRYINDEX);

    /* L stack: time func [args] thread coroutines */

    FUNC16(L, -2);

    /* L stack: time func [args] thread coroutines thread */

    co_ref = FUNC4(L, -2);
    FUNC11(L, 1);

    /* L stack: time func [args] thread */

    if (nargs > 2) {
        FUNC11(L, 1);  /* L stack: time func [args] */
        FUNC21(L, co, nargs - 2);  /* L stack: time func */

        /* co stack: func [args] */
    }

    p = FUNC23(sizeof(ngx_event_t) + sizeof(ngx_http_lua_timer_ctx_t),
                  r->connection->log);
    if (p == NULL) {
        goto nomem;
    }

    ev = (ngx_event_t *) p;

    FUNC39(ev, sizeof(ngx_event_t));

    p += sizeof(ngx_event_t);

    tctx = (ngx_http_lua_timer_ctx_t *) p;

    tctx->delay = every ? delay : 0;

    tctx->premature = 0;
    tctx->co_ref = co_ref;
    tctx->co = co;
    tctx->main_conf = r->main_conf;
    tctx->srv_conf = r->srv_conf;
    tctx->loc_conf = r->loc_conf;
    tctx->lmcf = lmcf;

    tctx->pool = FUNC24(128, ngx_cycle->log);
    if (tctx->pool == NULL) {
        goto nomem;
    }

    if (r->connection) {
        tctx->listening = r->connection->listening;

    } else {
        tctx->listening = NULL;
    }

    if (r->connection->addr_text.len) {
        tctx->client_addr_text.data = FUNC40(tctx->pool,
                                                 r->connection->addr_text.len);
        if (tctx->client_addr_text.data == NULL) {
            goto nomem;
        }

        FUNC38(tctx->client_addr_text.data, r->connection->addr_text.data,
                   r->connection->addr_text.len);
        tctx->client_addr_text.len = r->connection->addr_text.len;

    } else {
        tctx->client_addr_text.len = 0;
        tctx->client_addr_text.data = NULL;
    }

    if (ctx && ctx->vm_state) {
        tctx->vm_state = ctx->vm_state;
        tctx->vm_state->count++;

    } else {
        tctx->vm_state = NULL;
    }

    ev->handler = ngx_http_lua_timer_handler;
    ev->data = tctx;
    ev->log = ngx_cycle->log;

    lmcf->pending_timers++;

    FUNC22(ev, delay);

    FUNC37(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "created timer (co: %p delay: %M ms)", tctx->co, delay);

    FUNC12(L, 1);
    return 1;

nomem:

    if (tctx && tctx->pool) {
        FUNC25(tctx->pool);
    }

    if (ev) {
        FUNC26(ev);
    }

    FUNC13(L, FUNC33(
                          coroutines_key));
    FUNC17(L, LUA_REGISTRYINDEX);
    FUNC5(L, -1, co_ref);

    return FUNC3(L, "no memory");
}