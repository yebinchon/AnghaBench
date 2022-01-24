#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  read_event_handler; TYPE_2__* main; TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_17__ {scalar_t__ check_client_abort; } ;
typedef  TYPE_4__ ngx_http_lua_loc_conf_t ;
struct TYPE_18__ {int /*<<< orphan*/  (* resume_handler ) (TYPE_3__*) ;scalar_t__ entered_content_phase; TYPE_6__* cur_co_ctx; TYPE_6__* downstream; scalar_t__ waiting_more_body; } ;
typedef  TYPE_5__ ngx_http_lua_ctx_t ;
struct TYPE_19__ {int /*<<< orphan*/ * cleanup; } ;
typedef  TYPE_6__ ngx_http_lua_co_ctx_t ;
struct TYPE_15__ {int /*<<< orphan*/  count; } ;
struct TYPE_14__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  ngx_http_block_reading ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_5__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  ngx_http_lua_rd_check_broken_connection ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(ngx_http_request_t *r)
{
    ngx_http_lua_ctx_t      *ctx;
    ngx_http_lua_co_ctx_t   *coctx;

    ngx_http_lua_loc_conf_t             *llcf;

    FUNC4(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua req body post read, c:%ud", r->main->count);

    ctx = FUNC1(r, ngx_http_lua_module);

    if (ctx->waiting_more_body) {
        ctx->waiting_more_body = 0;

        coctx = ctx->downstream;
        ctx->cur_co_ctx = coctx;

        coctx->cleanup = NULL;

        llcf = FUNC2(r, ngx_http_lua_module);

        if (llcf->check_client_abort) {
            r->read_event_handler = ngx_http_lua_rd_check_broken_connection;

        } else {
            r->read_event_handler = ngx_http_block_reading;
        }

        if (ctx->entered_content_phase) {
            (void) FUNC3(r);

        } else {
            ctx->resume_handler = ngx_http_lua_read_body_resume;
            FUNC0(r);
        }
    }
}