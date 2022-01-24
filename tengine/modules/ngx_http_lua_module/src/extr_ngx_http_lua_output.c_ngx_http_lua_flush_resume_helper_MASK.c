#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_uint_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_16__ {TYPE_4__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_17__ {scalar_t__ entered_content_phase; TYPE_1__* cur_co_ctx; } ;
typedef  TYPE_3__ ngx_http_lua_ctx_t ;
struct TYPE_18__ {int /*<<< orphan*/  log; int /*<<< orphan*/  requests; scalar_t__ error; scalar_t__ timedout; } ;
typedef  TYPE_4__ ngx_connection_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_15__ {int /*<<< orphan*/  co; int /*<<< orphan*/ * cleanup; } ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_DONE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 

ngx_int_t
FUNC8(ngx_http_request_t *r, ngx_http_lua_ctx_t *ctx)
{
    int                          n;
    lua_State                   *vm;
    ngx_int_t                    rc;
    ngx_uint_t                   nreqs;
    ngx_connection_t            *c;

    c = r->connection;

    ctx->cur_co_ctx->cleanup = NULL;

    /* push the return values */

    if (c->timedout) {
        FUNC2(ctx->cur_co_ctx->co);
        FUNC1(ctx->cur_co_ctx->co, "timeout");
        n = 2;

    } else if (c->error) {
        FUNC2(ctx->cur_co_ctx->co);
        FUNC1(ctx->cur_co_ctx->co, "client aborted");
        n = 2;

    } else {
        FUNC0(ctx->cur_co_ctx->co, 1);
        n = 1;
    }

    vm = FUNC4(r, ctx);
    nreqs = c->requests;

    rc = FUNC6(vm, r, ctx, n);

    FUNC7(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua run thread returned %d", rc);

    if (rc == NGX_AGAIN) {
        return FUNC5(c, vm, r, ctx, nreqs);
    }

    if (rc == NGX_DONE) {
        FUNC3(r, NGX_DONE);
        return FUNC5(c, vm, r, ctx, nreqs);
    }

    /* rc == NGX_ERROR || rc >= NGX_OK */

    if (ctx->entered_content_phase) {
        FUNC3(r, rc);
        return NGX_DONE;
    }

    return rc;
}