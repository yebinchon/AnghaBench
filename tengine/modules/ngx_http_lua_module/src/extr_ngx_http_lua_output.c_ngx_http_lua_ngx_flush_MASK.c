#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_22__ {TYPE_1__* connection; int /*<<< orphan*/  write_event_handler; int /*<<< orphan*/  header_sent; scalar_t__ header_only; struct TYPE_22__* main; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_23__ {TYPE_4__* cur_co_ctx; scalar_t__ entered_content_phase; int /*<<< orphan*/  flushing_coros; int /*<<< orphan*/  seen_body_data; int /*<<< orphan*/  header_sent; scalar_t__ buffering; scalar_t__ eof; scalar_t__ acquired_raw_req_socket; } ;
typedef  TYPE_3__ ngx_http_lua_ctx_t ;
struct TYPE_24__ {int flushing; TYPE_2__* data; int /*<<< orphan*/  cleanup; } ;
typedef  TYPE_4__ ngx_http_lua_co_ctx_t ;
struct TYPE_25__ {int /*<<< orphan*/  send_lowat; int /*<<< orphan*/  send_timeout; } ;
typedef  TYPE_5__ ngx_http_core_loc_conf_t ;
struct TYPE_26__ {scalar_t__ delayed; scalar_t__ timer_set; } ;
typedef  TYPE_6__ ngx_event_t ;
typedef  int /*<<< orphan*/  ngx_chain_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_21__ {int buffered; int /*<<< orphan*/  log; TYPE_6__* write; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TBOOLEAN ; 
 scalar_t__ NGX_ERROR ; 
 int NGX_HTTP_LOWLEVEL_BUFFERED ; 
 int NGX_HTTP_LUA_CONTEXT_ACCESS ; 
 int NGX_HTTP_LUA_CONTEXT_CONTENT ; 
 int NGX_HTTP_LUA_CONTEXT_REWRITE ; 
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 scalar_t__ FUNC11 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 int /*<<< orphan*/  ngx_http_core_run_phases ; 
 TYPE_3__* FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  ngx_http_lua_content_wev_handler ; 
 int /*<<< orphan*/  ngx_http_lua_flush_cleanup ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 scalar_t__ FUNC18 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,scalar_t__) ; 

__attribute__((used)) static int
FUNC21(lua_State *L)
{
    ngx_http_request_t          *r;
    ngx_http_lua_ctx_t          *ctx;
    ngx_chain_t                 *cl;
    ngx_int_t                    rc;
    int                          n;
    unsigned                     wait = 0;
    ngx_event_t                 *wev;
    ngx_http_core_loc_conf_t    *clcf;
    ngx_http_lua_co_ctx_t       *coctx;

    n = FUNC3(L);
    if (n > 1) {
        return FUNC2(L, "attempt to pass %d arguments, but accepted 0 "
                          "or 1", n);
    }

    r = FUNC17(L);

    if (n == 1 && r == r->main) {
        FUNC1(L, 1, LUA_TBOOLEAN);
        wait = FUNC7(L, 1);
    }

    ctx = FUNC12(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return FUNC2(L, "no request ctx found");
    }

    FUNC14(L, ctx, NGX_HTTP_LUA_CONTEXT_REWRITE
                               | NGX_HTTP_LUA_CONTEXT_ACCESS
                               | NGX_HTTP_LUA_CONTEXT_CONTENT);

    if (ctx->acquired_raw_req_socket) {
        FUNC6(L);
        FUNC5(L, "raw request socket acquired");
        return 2;
    }

    coctx = ctx->cur_co_ctx;
    if (coctx == NULL) {
        return FUNC2(L, "no co ctx found");
    }

    if (r->header_only) {
        FUNC6(L);
        FUNC5(L, "header only");
        return 2;
    }

    if (ctx->eof) {
        FUNC6(L);
        FUNC5(L, "seen eof");
        return 2;
    }

    if (ctx->buffering) {
        FUNC19(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua http 1.0 buffering makes ngx.flush() a no-op");

        FUNC6(L);
        FUNC5(L, "buffering");
        return 2;
    }

#if 1
    if ((!r->header_sent && !ctx->header_sent)
        || (!ctx->seen_body_data && !wait))
    {
        FUNC6(L);
        FUNC5(L, "nothing to flush");
        return 2;
    }
#endif

    cl = FUNC16(r, ctx);
    if (cl == NULL) {
        return FUNC2(L, "no memory");
    }

    rc = FUNC18(r, ctx, cl);

    FUNC0("send chain: %d", (int) rc);

    if (rc == NGX_ERROR || rc >= NGX_HTTP_SPECIAL_RESPONSE) {
        FUNC6(L);
        FUNC5(L, "nginx output filter error");
        return 2;
    }

    FUNC0("wait:%d, rc:%d, buffered:0x%x", wait, (int) rc,
       r->connection->buffered);

    wev = r->connection->write;

    if (wait && (r->connection->buffered & NGX_HTTP_LOWLEVEL_BUFFERED
                 || wev->delayed))
    {
        FUNC20(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua flush requires waiting: buffered 0x%uxd, "
                       "delayed:%d", (unsigned) r->connection->buffered,
                       wev->delayed);

        coctx->flushing = 1;
        ctx->flushing_coros++;

        if (ctx->entered_content_phase) {
            /* mimic ngx_http_set_write_handler */
            r->write_event_handler = ngx_http_lua_content_wev_handler;

        } else {
            r->write_event_handler = ngx_http_core_run_phases;
        }

        clcf = FUNC13(r, ngx_http_core_module);

        if (!wev->delayed) {
            FUNC9(wev, clcf->send_timeout);
        }

        if (FUNC11(wev, clcf->send_lowat) != NGX_OK) {
            if (wev->timer_set) {
                wev->delayed = 0;
                FUNC10(wev);
            }

            FUNC6(L);
            FUNC5(L, "connection broken");
            return 2;
        }

        FUNC15(ctx->cur_co_ctx);
        coctx->cleanup = ngx_http_lua_flush_cleanup;
        coctx->data = r;

        return FUNC8(L, 0);
    }

    FUNC19(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua flush asynchronously");

    FUNC4(L, 1);
    return 1;
}