
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_22__ {TYPE_3__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_25__ {int * connection; int data; int (* free ) (TYPE_7__*,int ,int ) ;} ;
struct TYPE_20__ {scalar_t__ len; int * data; } ;
struct TYPE_23__ {int conn_closed; TYPE_6__* socket_pool; TYPE_7__ peer; TYPE_2__ ssl_name; TYPE_1__* resolved; scalar_t__ body_downstream; scalar_t__ raw_downstream; int ** cleanup; } ;
typedef TYPE_5__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_24__ {scalar_t__ connections; } ;
typedef TYPE_6__ ngx_http_lua_socket_pool_t ;
typedef int ngx_connection_t ;
struct TYPE_21__ {int log; } ;
struct TYPE_19__ {int * ctx; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int dd (char*,TYPE_4__*,TYPE_5__*,int **) ;
 int ngx_free (int *) ;
 int ngx_http_lua_cleanup_free (TYPE_4__*,int **) ;
 int ngx_http_lua_socket_free_pool (int ,TYPE_6__*) ;
 int ngx_http_lua_socket_tcp_close_connection (int *) ;
 int ngx_http_lua_socket_tcp_finalize_read_part (TYPE_4__*,TYPE_5__*) ;
 int ngx_http_lua_socket_tcp_finalize_write_part (TYPE_4__*,TYPE_5__*) ;
 int ngx_http_lua_socket_tcp_resume_conn_op (TYPE_6__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_resolve_name_done (int *) ;
 int stub1 (TYPE_7__*,int ,int ) ;

__attribute__((used)) static void
ngx_http_lua_socket_tcp_finalize(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u)
{
    ngx_connection_t *c;
    ngx_http_lua_socket_pool_t *spool;

    dd("request: %p, u: %p, u->cleanup: %p", r, u, u->cleanup);

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua finalize socket");

    if (u->cleanup) {
        *u->cleanup = ((void*)0);
        ngx_http_lua_cleanup_free(r, u->cleanup);
        u->cleanup = ((void*)0);
    }

    ngx_http_lua_socket_tcp_finalize_read_part(r, u);
    ngx_http_lua_socket_tcp_finalize_write_part(r, u);

    if (u->raw_downstream || u->body_downstream) {
        u->peer.connection = ((void*)0);
        return;
    }

    if (u->resolved && u->resolved->ctx) {
        ngx_resolve_name_done(u->resolved->ctx);
        u->resolved->ctx = ((void*)0);
    }

    if (u->peer.free) {
        u->peer.free(&u->peer, u->peer.data, 0);
    }
    c = u->peer.connection;
    if (c) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua close socket connection");

        ngx_http_lua_socket_tcp_close_connection(c);
        u->peer.connection = ((void*)0);
        u->conn_closed = 1;

        spool = u->socket_pool;
        if (spool == ((void*)0)) {
            return;
        }

        spool->connections--;

        if (spool->connections == 0) {
            ngx_http_lua_socket_free_pool(r->connection->log, spool);
            return;
        }

        ngx_http_lua_socket_tcp_resume_conn_op(spool);
    }
}
