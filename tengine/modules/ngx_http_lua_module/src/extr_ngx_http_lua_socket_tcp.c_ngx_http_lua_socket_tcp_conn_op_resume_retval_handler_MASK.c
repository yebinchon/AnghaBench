#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_http_request_t ;
struct TYPE_14__ {TYPE_2__* socket_pool; } ;
typedef  TYPE_3__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_12__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_15__ {int /*<<< orphan*/  queue; int /*<<< orphan*/  port; TYPE_1__ host; int /*<<< orphan*/ ** cleanup; } ;
typedef  TYPE_4__ ngx_http_lua_socket_tcp_conn_op_ctx_t ;
struct TYPE_16__ {TYPE_6__* cur_co_ctx; } ;
typedef  TYPE_5__ ngx_http_lua_ctx_t ;
struct TYPE_17__ {TYPE_4__* data; } ;
typedef  TYPE_6__ ngx_http_lua_co_ctx_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_13__ {int /*<<< orphan*/  cache_connect_op; int /*<<< orphan*/  connections; } ;

/* Variables and functions */
 int NGX_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_6__*) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  ngx_http_lua_module ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u, lua_State *L)
{
    int                                      nret;
    ngx_http_lua_ctx_t                      *ctx;
    ngx_http_lua_co_ctx_t                   *coctx;
    ngx_http_lua_socket_tcp_conn_op_ctx_t   *conn_op_ctx;

    ctx = FUNC1(r, ngx_http_lua_module);
    if (ctx == NULL) {
        return NGX_ERROR;
    }

    coctx = ctx->cur_co_ctx;
    FUNC0("coctx: %p", coctx);
    conn_op_ctx = coctx->data;
    if (conn_op_ctx->cleanup != NULL) {
        *conn_op_ctx->cleanup = NULL;
        FUNC2(r, conn_op_ctx->cleanup);
        conn_op_ctx->cleanup = NULL;
    }

    /* decrease pending connect operation counter */
    u->socket_pool->connections--;

    nret = FUNC3(L, u, r, ctx,
                                                  conn_op_ctx->host.data,
                                                  conn_op_ctx->host.len,
                                                  conn_op_ctx->port, 1);
    FUNC4(&u->socket_pool->cache_connect_op,
                          &conn_op_ctx->queue);

    return nret;
}