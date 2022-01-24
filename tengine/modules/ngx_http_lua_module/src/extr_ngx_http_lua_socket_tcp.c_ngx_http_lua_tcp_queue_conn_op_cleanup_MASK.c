#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_6__* socket_pool; } ;
typedef  TYPE_1__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_14__ {scalar_t__ timer_set; scalar_t__ posted; } ;
struct TYPE_11__ {int /*<<< orphan*/  queue; TYPE_7__ event; TYPE_1__* u; } ;
typedef  TYPE_2__ ngx_http_lua_socket_tcp_conn_op_ctx_t ;
struct TYPE_12__ {TYPE_2__* data; } ;
typedef  TYPE_3__ ngx_http_lua_co_ctx_t ;
struct TYPE_15__ {int /*<<< orphan*/  log; } ;
struct TYPE_13__ {int /*<<< orphan*/  connections; int /*<<< orphan*/  cache_connect_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 TYPE_9__* ngx_cycle ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void *data)
{
    ngx_http_lua_co_ctx_t                  *coctx = data;
    ngx_http_lua_socket_tcp_upstream_t     *u;
    ngx_http_lua_socket_tcp_conn_op_ctx_t  *conn_op_ctx;

    conn_op_ctx = coctx->data;
    u = conn_op_ctx->u;

    FUNC3(NGX_LOG_DEBUG_HTTP, ngx_cycle->log, 0,
                   "lua tcp socket abort queueing, conn_op_ctx: %p, u: %p",
                   conn_op_ctx, u);

    if (conn_op_ctx->event.posted) {
        FUNC1(&conn_op_ctx->event);

    } else if (conn_op_ctx->event.timer_set) {
        FUNC0(&conn_op_ctx->event);
    }

    FUNC5(&conn_op_ctx->queue);
    FUNC4(&u->socket_pool->cache_connect_op,
                          &conn_op_ctx->queue);

    u->socket_pool->connections--;
    FUNC2(u->socket_pool);
}