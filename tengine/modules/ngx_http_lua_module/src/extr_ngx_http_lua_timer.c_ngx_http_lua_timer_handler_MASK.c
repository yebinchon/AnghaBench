#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_53__   TYPE_9__ ;
typedef  struct TYPE_52__   TYPE_8__ ;
typedef  struct TYPE_51__   TYPE_7__ ;
typedef  struct TYPE_50__   TYPE_6__ ;
typedef  struct TYPE_49__   TYPE_5__ ;
typedef  struct TYPE_48__   TYPE_4__ ;
typedef  struct TYPE_47__   TYPE_3__ ;
typedef  struct TYPE_46__   TYPE_39__ ;
typedef  struct TYPE_45__   TYPE_2__ ;
typedef  struct TYPE_44__   TYPE_1__ ;
typedef  struct TYPE_43__   TYPE_13__ ;
typedef  struct TYPE_42__   TYPE_12__ ;
typedef  struct TYPE_41__   TYPE_11__ ;
typedef  struct TYPE_40__   TYPE_10__ ;

/* Type definitions */
struct TYPE_47__ {scalar_t__ data; int /*<<< orphan*/  (* handler ) (scalar_t__) ;} ;
typedef  TYPE_3__ ngx_pool_cleanup_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_48__ {TYPE_12__* connection; int /*<<< orphan*/  read_event_handler; int /*<<< orphan*/  pool; int /*<<< orphan*/  loc_conf; int /*<<< orphan*/  srv_conf; int /*<<< orphan*/  main_conf; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_49__ {scalar_t__ delay; unsigned int co; scalar_t__ pool; scalar_t__ vm_state; scalar_t__ co_ref; int /*<<< orphan*/  premature; int /*<<< orphan*/  loc_conf; int /*<<< orphan*/  srv_conf; int /*<<< orphan*/  main_conf; int /*<<< orphan*/  client_addr_text; int /*<<< orphan*/  listening; TYPE_6__* lmcf; } ;
typedef  TYPE_5__ ngx_http_lua_timer_ctx_t ;
struct TYPE_50__ {scalar_t__ running_timers; scalar_t__ max_running_timers; int /*<<< orphan*/  pending_timers; } ;
typedef  TYPE_6__ ngx_http_lua_main_conf_t ;
struct TYPE_45__ {unsigned int co; int co_top; int /*<<< orphan*/  co_status; scalar_t__ co_ref; } ;
struct TYPE_51__ {int entered_content_phase; TYPE_2__* cur_co_ctx; int /*<<< orphan*/  context; int /*<<< orphan*/ * cleanup; TYPE_2__ entry_co_ctx; scalar_t__ vm_state; } ;
typedef  TYPE_7__ ngx_http_lua_ctx_t ;
struct TYPE_52__ {TYPE_13__* error_log; } ;
typedef  TYPE_8__ ngx_http_core_loc_conf_t ;
struct TYPE_53__ {int /*<<< orphan*/  handler; TYPE_7__* data; } ;
typedef  TYPE_9__ ngx_http_cleanup_t ;
struct TYPE_40__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_10__ ngx_event_t ;
struct TYPE_41__ {TYPE_1__* log; int /*<<< orphan*/  addr_text; int /*<<< orphan*/  listening; } ;
typedef  TYPE_11__ ngx_connection_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_46__ {int /*<<< orphan*/  log; } ;
struct TYPE_44__ {int log_level; int /*<<< orphan*/  file; TYPE_11__* data; int /*<<< orphan*/  handler; } ;
struct TYPE_43__ {int log_level; int /*<<< orphan*/  file; } ;
struct TYPE_42__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_DONE ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_CONTEXT_TIMER ; 
 int /*<<< orphan*/  NGX_HTTP_LUA_CO_RUNNING ; 
 int /*<<< orphan*/  NGX_LOG_ALERT ; 
 int NGX_LOG_DEBUG_CONNECTION ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  coroutines_key ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int,scalar_t__) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_39__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  ngx_exiting ; 
 int /*<<< orphan*/  FUNC9 (TYPE_10__*) ; 
 int /*<<< orphan*/  ngx_http_block_reading ; 
 TYPE_9__* FUNC10 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_8__* FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_11__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_7__*,int) ; 
 TYPE_7__* FUNC15 (TYPE_4__*) ; 
 TYPE_11__* FUNC16 (scalar_t__) ; 
 TYPE_4__* FUNC17 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC19 (TYPE_4__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_log_timer_error ; 
 int /*<<< orphan*/  ngx_http_lua_request_cleanup_handler ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC22 (unsigned int,TYPE_4__*) ; 
 scalar_t__ FUNC23 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_12__*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_12__*,TYPE_13__*) ; 

__attribute__((used)) static void
FUNC30(ngx_event_t *ev)
{
    int                      n;
    lua_State               *L;
    ngx_int_t                rc;
    ngx_connection_t        *c = NULL;
    ngx_http_request_t      *r = NULL;
    ngx_http_lua_ctx_t      *ctx;
    ngx_http_cleanup_t      *cln;
    ngx_pool_cleanup_t      *pcln;

    ngx_http_lua_timer_ctx_t         tctx;
    ngx_http_lua_main_conf_t        *lmcf;
    ngx_http_core_loc_conf_t        *clcf;

    FUNC25(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "lua ngx.timer expired");

    FUNC27(&tctx, ev->data, sizeof(ngx_http_lua_timer_ctx_t));
    FUNC9(ev);

    lmcf = tctx.lmcf;

    lmcf->pending_timers--;

    if (!ngx_exiting && tctx.delay > 0) {
        rc = FUNC23(&tctx);
        if (rc != NGX_OK) {
            FUNC26(NGX_LOG_ALERT, ngx_cycle->log, 0,
                          "failed to create the next timer of delay %ud ms",
                          (unsigned) tctx.delay);
        }
    }

    if (lmcf->running_timers >= lmcf->max_running_timers) {
        FUNC26(NGX_LOG_ALERT, ngx_cycle->log, 0,
                      "%i lua_max_running_timers are not enough",
                      lmcf->max_running_timers);
        goto failed;
    }

    c = FUNC16(tctx.pool);
    if (c == NULL) {
        FUNC26(NGX_LOG_ALERT, ngx_cycle->log, 0,
                      "failed to create fake connection to run timer (co: %p)",
                      tctx.co);
        goto failed;
    }

    c->log->handler = ngx_http_lua_log_timer_error;
    c->log->data = c;

    c->listening = tctx.listening;
    c->addr_text = tctx.client_addr_text;

    r = FUNC17(c);
    if (r == NULL) {
        FUNC26(NGX_LOG_ALERT, ngx_cycle->log, 0,
                      "failed to create fake request to run timer (co: %p)",
                      tctx.co);
        goto failed;
    }

    r->main_conf = tctx.main_conf;
    r->srv_conf = tctx.srv_conf;
    r->loc_conf = tctx.loc_conf;

    clcf = FUNC11(r, ngx_http_core_module);

#if defined(nginx_version) && nginx_version >= 1003014

#   if nginx_version >= 1009000

    ngx_set_connection_log(r->connection, clcf->error_log);

#   else

    ngx_http_set_connection_log(r->connection, clcf->error_log);

#   endif

#else

    c->log->file = clcf->error_log->file;

    if (!(c->log->log_level & NGX_LOG_DEBUG_CONNECTION)) {
        c->log->log_level = clcf->error_log->log_level;
    }

#endif

    FUNC0("lmcf: %p", lmcf);

    ctx = FUNC15(r);
    if (ctx == NULL) {
        FUNC26(NGX_LOG_ALERT, ngx_cycle->log, 0,
                      "failed to create ctx to run timer (co: %p)", tctx.co);
        goto failed;
    }

    if (tctx.vm_state) {
        ctx->vm_state = tctx.vm_state;

        pcln = FUNC28(r->pool, 0);
        if (pcln == NULL) {
            FUNC26(NGX_LOG_ALERT, ngx_cycle->log, 0,
                          "failed to add vm cleanup to run timer (co: %p)",
                          tctx.co);
            goto failed;
        }

        pcln->handler = ngx_http_lua_cleanup_vm;
        pcln->data = tctx.vm_state;
    }

    ctx->cur_co_ctx = &ctx->entry_co_ctx;

    L = FUNC19(r, ctx);

    cln = FUNC10(r, 0);
    if (cln == NULL) {
        FUNC26(NGX_LOG_ALERT, ngx_cycle->log, 0,
                      "failed to add request cleanup to run timer (co: %p)",
                      tctx.co);
        goto failed;
    }

    cln->handler = ngx_http_lua_request_cleanup_handler;
    cln->data = ctx;
    ctx->cleanup = &cln->handler;

    ctx->entered_content_phase = 1;
    ctx->context = NGX_HTTP_LUA_CONTEXT_TIMER;

    r->read_event_handler = ngx_http_block_reading;

    ctx->cur_co_ctx->co_ref = tctx.co_ref;
    ctx->cur_co_ctx->co = tctx.co;
    ctx->cur_co_ctx->co_status = NGX_HTTP_LUA_CO_RUNNING;

    FUNC0("r connection: %p, log %p", r->connection, r->connection->log);

    /*  save the request in coroutine globals table */
    FUNC22(tctx.co, r);

    lmcf->running_timers++;

    FUNC4(tctx.co, tctx.premature);

    n = FUNC2(tctx.co);
    if (n > 2) {
        FUNC3(tctx.co, 2);
    }

#ifdef NGX_LUA_USE_ASSERT
    ctx->cur_co_ctx->co_top = 1;
#endif

    rc = FUNC21(L, r, ctx, n - 1);

    FUNC0("timer lua run thread: %d", (int) rc);

    if (rc == NGX_ERROR || rc >= NGX_OK) {
        /* do nothing */

    } else if (rc == NGX_AGAIN) {
        rc = FUNC14(L, r, ctx, 0);

    } else if (rc == NGX_DONE) {
        rc = FUNC14(L, r, ctx, 1);

    } else {
        rc = NGX_OK;
    }

    FUNC18(r, rc);
    return;

failed:

    if (tctx.co_ref && tctx.co) {
        FUNC5(tctx.co, FUNC20(
                              coroutines_key));
        FUNC6(tctx.co, LUA_REGISTRYINDEX);
        FUNC1(tctx.co, -1, tctx.co_ref);
        FUNC7(tctx.co, 0);
    }

    if (tctx.vm_state) {
        FUNC12(tctx.vm_state);
    }

    if (c) {
        FUNC13(c);

    } else if (tctx.pool) {
        FUNC8(tctx.pool);
    }
}