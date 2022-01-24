#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_3__* connection; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_25__ {int /*<<< orphan*/ * connection; int /*<<< orphan*/  data; int /*<<< orphan*/  (* free ) (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_20__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
struct TYPE_23__ {int conn_closed; TYPE_6__* socket_pool; TYPE_7__ peer; TYPE_2__ ssl_name; TYPE_1__* resolved; scalar_t__ body_downstream; scalar_t__ raw_downstream; int /*<<< orphan*/ ** cleanup; } ;
typedef  TYPE_5__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_24__ {scalar_t__ connections; } ;
typedef  TYPE_6__ ngx_http_lua_socket_pool_t ;
typedef  int /*<<< orphan*/  ngx_connection_t ;
struct TYPE_21__ {int /*<<< orphan*/  log; } ;
struct TYPE_19__ {int /*<<< orphan*/ * ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u)
{
    ngx_connection_t               *c;
    ngx_http_lua_socket_pool_t     *spool;

    FUNC0("request: %p, u: %p, u->cleanup: %p", r, u, u->cleanup);

    FUNC8(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua finalize socket");

    if (u->cleanup) {
        *u->cleanup = NULL;
        FUNC2(r, u->cleanup);
        u->cleanup = NULL;
    }

    FUNC5(r, u);
    FUNC6(r, u);

    if (u->raw_downstream || u->body_downstream) {
        u->peer.connection = NULL;
        return;
    }

    if (u->resolved && u->resolved->ctx) {
        FUNC9(u->resolved->ctx);
        u->resolved->ctx = NULL;
    }

    if (u->peer.free) {
        u->peer.free(&u->peer, u->peer.data, 0);
    }

#if (NGX_HTTP_SSL)
    if (u->ssl_name.data) {
        ngx_free(u->ssl_name.data);
        u->ssl_name.data = NULL;
        u->ssl_name.len = 0;
    }
#endif

    c = u->peer.connection;
    if (c) {
        FUNC8(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua close socket connection");

        FUNC4(c);
        u->peer.connection = NULL;
        u->conn_closed = 1;

        spool = u->socket_pool;
        if (spool == NULL) {
            return;
        }

        spool->connections--;

        if (spool->connections == 0) {
            FUNC3(r->connection->log, spool);
            return;
        }

        FUNC7(spool);
    }
}