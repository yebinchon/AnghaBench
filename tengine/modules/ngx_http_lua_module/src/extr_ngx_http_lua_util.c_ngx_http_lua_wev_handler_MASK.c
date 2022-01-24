#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_20__ {int /*<<< orphan*/  main; TYPE_6__* connection; } ;
typedef  TYPE_1__ ngx_http_request_t ;
struct TYPE_21__ {int /*<<< orphan*/  (* write_event_handler ) (TYPE_1__*,TYPE_2__*) ;} ;
typedef  TYPE_2__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_22__ {scalar_t__ entered_content_phase; scalar_t__ flushing_coros; TYPE_2__* downstream; scalar_t__ writing_raw_req_socket; } ;
typedef  TYPE_3__ ngx_http_lua_ctx_t ;
struct TYPE_23__ {int /*<<< orphan*/  send_lowat; int /*<<< orphan*/  send_timeout; } ;
typedef  TYPE_4__ ngx_http_core_loc_conf_t ;
struct TYPE_24__ {scalar_t__ timedout; int /*<<< orphan*/  ready; scalar_t__ delayed; } ;
typedef  TYPE_5__ ngx_event_t ;
struct TYPE_25__ {int timedout; int buffered; int /*<<< orphan*/  log; int /*<<< orphan*/  error; TYPE_5__* write; } ;
typedef  TYPE_6__ ngx_connection_t ;

/* Variables and functions */
 scalar_t__ NGX_DONE ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_ETIMEDOUT ; 
 int NGX_HTTP_LOWLEVEL_BUFFERED ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_INFO ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_core_module ; 
 TYPE_3__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_2__*) ; 

ngx_int_t
FUNC12(ngx_http_request_t *r)
{
    ngx_int_t                    rc;
    ngx_event_t                 *wev;
    ngx_connection_t            *c;
    ngx_http_lua_ctx_t          *ctx;
    ngx_http_core_loc_conf_t    *clcf;

    ngx_http_lua_socket_tcp_upstream_t *u;

    c = r->connection;
    wev = c->write;

    ctx = FUNC3(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return NGX_ERROR;
    }

    FUNC9(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "lua run write event handler: timedout:%ud, ready:%ud, "
                   "writing_raw_req_socket:%ud",
                   wev->timedout, wev->ready, ctx->writing_raw_req_socket);

    clcf = FUNC4(r->main, ngx_http_core_module);

    if (wev->timedout && !ctx->writing_raw_req_socket) {
        if (!wev->delayed) {
            FUNC10(NGX_LOG_INFO, c->log, NGX_ETIMEDOUT,
                          "client timed out");
            c->timedout = 1;

            goto flush_coros;
        }

        wev->timedout = 0;
        wev->delayed = 0;

        if (!wev->ready) {
            FUNC1(wev, clcf->send_timeout);

            if (FUNC2(wev, clcf->send_lowat) != NGX_OK) {
                if (ctx->entered_content_phase) {
                    FUNC5(r, NGX_ERROR);
                }
                return NGX_ERROR;
            }
        }
    }

    if (!wev->ready && !wev->timedout) {
        goto useless;
    }

    if (ctx->writing_raw_req_socket) {
        ctx->writing_raw_req_socket = 0;

        u = ctx->downstream;
        if (u == NULL) {
            return NGX_ERROR;
        }

        u->write_event_handler(r, u);
        return NGX_DONE;
    }

    if (c->buffered & NGX_HTTP_LOWLEVEL_BUFFERED) {
        rc = FUNC6(r, ctx);

        FUNC0("flush pending output returned %d, c->error: %d", (int) rc,
           c->error);

        if (rc != NGX_ERROR && rc != NGX_OK) {
            goto useless;
        }

        /* when rc == NGX_ERROR, c->error must be set */
    }

flush_coros:

    FUNC0("ctx->flushing_coros: %d", (int) ctx->flushing_coros);

    if (ctx->flushing_coros) {
        return FUNC7(r, ctx);
    }

    /* ctx->flushing_coros == 0 */

useless:

    FUNC8(NGX_LOG_DEBUG_HTTP, c->log, 0,
                   "useless lua write event handler");

    if (ctx->entered_content_phase) {
        return NGX_OK;
    }

    return NGX_DONE;
}