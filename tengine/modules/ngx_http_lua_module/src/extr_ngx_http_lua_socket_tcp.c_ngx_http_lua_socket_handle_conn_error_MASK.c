#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_uint_t ;
struct TYPE_15__ {int /*<<< orphan*/  (* write_event_handler ) (TYPE_2__*) ;TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_16__ {TYPE_5__* write_co_ctx; scalar_t__ conn_waiting; void* write_event_handler; void* read_event_handler; int /*<<< orphan*/  ft_type; } ;
typedef  TYPE_3__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_17__ {TYPE_5__* cur_co_ctx; int /*<<< orphan*/  resume_handler; } ;
typedef  TYPE_4__ ngx_http_lua_ctx_t ;
struct TYPE_18__ {scalar_t__ co_ref; int /*<<< orphan*/ * cleanup; } ;
typedef  TYPE_5__ ngx_http_lua_co_ctx_t ;
struct TYPE_14__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 TYPE_4__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 void* ngx_http_lua_socket_dummy_handler ; 
 int /*<<< orphan*/  ngx_http_lua_socket_tcp_conn_resume ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u, ngx_uint_t ft_type)
{
    ngx_http_lua_ctx_t          *ctx;
    ngx_http_lua_co_ctx_t       *coctx;

    FUNC5(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket handle connect error");

    u->ft_type |= ft_type;

#if 1
    FUNC4(r, u);
#endif

    u->read_event_handler = ngx_http_lua_socket_dummy_handler;
    u->write_event_handler = ngx_http_lua_socket_dummy_handler;

    FUNC0("connection waiting: %d", (int) u->conn_waiting);

    coctx = u->write_co_ctx;

    if (u->conn_waiting) {
        u->conn_waiting = 0;

        coctx->cleanup = NULL;
        u->write_co_ctx = NULL;

        ctx = FUNC1(r, ngx_http_lua_module);

        ctx->resume_handler = ngx_http_lua_socket_tcp_conn_resume;
        ctx->cur_co_ctx = coctx;

        FUNC2(coctx && (!FUNC3(ctx)
                            || coctx->co_ref >= 0));

        FUNC5(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua tcp socket waking up the current request");

        r->write_event_handler(r);
    }
}