#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ngx_int_t ;
struct TYPE_19__ {int /*<<< orphan*/  (* write_event_handler ) (TYPE_3__*) ;TYPE_2__* connection; scalar_t__ done; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_20__ {scalar_t__ entered_content_phase; TYPE_1__* on_abort_co_ctx; TYPE_1__* cur_co_ctx; int /*<<< orphan*/  resume_handler; int /*<<< orphan*/  uthreads; } ;
typedef  TYPE_4__ ngx_http_lua_ctx_t ;
struct TYPE_21__ {scalar_t__ active; } ;
typedef  TYPE_5__ ngx_event_t ;
struct TYPE_18__ {int error; int /*<<< orphan*/  log; TYPE_5__* read; } ;
struct TYPE_17__ {scalar_t__ co_status; } ;

/* Variables and functions */
 scalar_t__ NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 scalar_t__ NGX_HTTP_LUA_CO_RUNNING ; 
 scalar_t__ NGX_HTTP_LUA_CO_SUSPENDED ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  NGX_READ_EVENT ; 
 int NGX_USE_LEVEL_EVENT ; 
 scalar_t__ FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ngx_event_flags ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_4__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  ngx_http_lua_on_abort_resume ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

void
FUNC9(ngx_http_request_t *r)
{
    ngx_int_t                   rc;
    ngx_event_t                *rev;
    ngx_http_lua_ctx_t         *ctx;

    if (r->done) {
        return;
    }

    rc = FUNC3(r, r->connection->read);

    if (rc == NGX_OK) {
        return;
    }

    /* rc == NGX_ERROR || rc > NGX_OK */

    ctx = FUNC2(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return;
    }

    if (ctx->on_abort_co_ctx == NULL) {
        r->connection->error = 1;
        FUNC6(ctx, 0);
        FUNC5(r, rc);
        return;
    }

    if (ctx->on_abort_co_ctx->co_status != NGX_HTTP_LUA_CO_SUSPENDED) {

        /* on_abort already run for the current request handler */

        rev = r->connection->read;

        if ((ngx_event_flags & NGX_USE_LEVEL_EVENT) && rev->active) {
            if (FUNC0(rev, NGX_READ_EVENT, 0) != NGX_OK) {
                FUNC6(ctx, 0);
                FUNC5(r,
                                              NGX_HTTP_INTERNAL_SERVER_ERROR);
                return;
            }
        }

        return;
    }

    ctx->uthreads++;
    ctx->resume_handler = ngx_http_lua_on_abort_resume;
    ctx->on_abort_co_ctx->co_status = NGX_HTTP_LUA_CO_RUNNING;
    ctx->cur_co_ctx = ctx->on_abort_co_ctx;

    FUNC7(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua waking up the on_abort callback thread");

    if (ctx->entered_content_phase) {
        r->write_event_handler = ngx_http_lua_content_wev_handler;

    } else {
        r->write_event_handler = ngx_http_core_run_phases;
    }

    r->write_event_handler(r);
}