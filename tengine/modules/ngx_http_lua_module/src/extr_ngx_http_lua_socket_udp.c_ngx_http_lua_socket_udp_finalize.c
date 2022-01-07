
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_10__ {int * connection; } ;
struct TYPE_12__ {scalar_t__ waiting; TYPE_3__ udp_connection; TYPE_1__* resolved; int ** cleanup; } ;
typedef TYPE_5__ ngx_http_lua_socket_udp_upstream_t ;
struct TYPE_9__ {int log; } ;
struct TYPE_8__ {int * ctx; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_close_connection (int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_resolve_name_done (int *) ;

__attribute__((used)) static void
ngx_http_lua_socket_udp_finalize(ngx_http_request_t *r,
    ngx_http_lua_socket_udp_upstream_t *u)
{
    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua finalize socket");

    if (u->cleanup) {
        *u->cleanup = ((void*)0);
        u->cleanup = ((void*)0);
    }

    if (u->resolved && u->resolved->ctx) {
        ngx_resolve_name_done(u->resolved->ctx);
        u->resolved->ctx = ((void*)0);
    }

    if (u->udp_connection.connection) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua close socket connection");

        ngx_close_connection(u->udp_connection.connection);
        u->udp_connection.connection = ((void*)0);
    }

    if (u->waiting) {
        u->waiting = 0;
    }
}
