#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_uint_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_18__ {TYPE_4__* connection; int /*<<< orphan*/  pool; } ;
typedef  TYPE_1__ ngx_http_request_t ;
struct TYPE_19__ {scalar_t__ entered_content_phase; TYPE_3__* cur_co_ctx; int /*<<< orphan*/  resume_handler; } ;
typedef  TYPE_2__ ngx_http_lua_ctx_t ;
struct TYPE_20__ {scalar_t__ nsubreqs; int /*<<< orphan*/ * sr_flags; int /*<<< orphan*/ * sr_bodies; int /*<<< orphan*/ * sr_headers; int /*<<< orphan*/ * sr_statuses; } ;
typedef  TYPE_3__ ngx_http_lua_co_ctx_t ;
struct TYPE_21__ {int /*<<< orphan*/  log; int /*<<< orphan*/  requests; } ;
typedef  TYPE_4__ ngx_connection_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_DONE ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  ngx_http_lua_wev_handler ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC10(ngx_http_request_t *r)
{
    lua_State                   *vm;
    ngx_int_t                    rc;
    ngx_uint_t                   nreqs;
    ngx_connection_t            *c;
    ngx_http_lua_ctx_t          *ctx;
    ngx_http_lua_co_ctx_t       *coctx;

    ctx = FUNC1(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return NGX_ERROR;
    }

    ctx->resume_handler = ngx_http_lua_wev_handler;

    FUNC7(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua run subrequests done, resuming lua thread");

    coctx = ctx->cur_co_ctx;

    FUNC0("nsubreqs: %d", (int) coctx->nsubreqs);

    FUNC4(r, ctx);

    FUNC0("free sr_statues/headers/bodies memory ASAP");

#if 1
    FUNC9(r->pool, coctx->sr_statuses);

    coctx->sr_statuses = NULL;
    coctx->sr_headers = NULL;
    coctx->sr_bodies = NULL;
    coctx->sr_flags = NULL;
#endif

    c = r->connection;
    vm = FUNC3(r, ctx);
    nreqs = c->requests;

    rc = FUNC6(vm, r, ctx, coctx->nsubreqs);

    FUNC8(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua run thread returned %d", rc);

    if (rc == NGX_AGAIN) {
        return FUNC5(c, vm, r, ctx, nreqs);
    }

    if (rc == NGX_DONE) {
        FUNC2(r, NGX_DONE);
        return FUNC5(c, vm, r, ctx, nreqs);
    }

    /* rc == NGX_ERROR || rc >= NGX_OK */

    if (ctx->entered_content_phase) {
        FUNC2(r, rc);
        return NGX_DONE;
    }

    return rc;
}