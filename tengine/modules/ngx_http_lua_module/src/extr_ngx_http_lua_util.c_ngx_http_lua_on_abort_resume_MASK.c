#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_uint_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_15__ {TYPE_3__* connection; } ;
typedef  TYPE_1__ ngx_http_request_t ;
struct TYPE_16__ {scalar_t__ entered_content_phase; int /*<<< orphan*/  resume_handler; } ;
typedef  TYPE_2__ ngx_http_lua_ctx_t ;
struct TYPE_17__ {int /*<<< orphan*/  log; int /*<<< orphan*/  requests; } ;
typedef  TYPE_3__ ngx_connection_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ NGX_AGAIN ; 
 scalar_t__ NGX_DONE ; 
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 TYPE_2__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_http_lua_wev_handler ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static ngx_int_t
FUNC8(ngx_http_request_t *r)
{
    lua_State                   *vm;
    ngx_int_t                    rc;
    ngx_uint_t                   nreqs;
    ngx_connection_t            *c;
    ngx_http_lua_ctx_t          *ctx;

    ctx = FUNC0(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return NGX_ERROR;
    }

    ctx->resume_handler = ngx_http_lua_wev_handler;

    FUNC6(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua resuming the on_abort callback thread");

#if 0
    ngx_http_lua_probe_info("tcp resume");
#endif

    c = r->connection;
    vm = FUNC2(r, ctx);
    nreqs = c->requests;

    rc = FUNC5(vm, r, ctx, 0);

    FUNC7(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua run thread returned %d", rc);

    if (rc == NGX_AGAIN) {
        return FUNC4(c, vm, r, ctx, nreqs);
    }

    if (rc == NGX_DONE) {
        FUNC1(r, NGX_DONE);
        return FUNC4(c, vm, r, ctx, nreqs);
    }

    if (ctx->entered_content_phase) {
        FUNC1(r, rc);
        return NGX_DONE;
    }

    return rc;
}