
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {void* read_event_handler; TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_11__ {int * connection; } ;
struct TYPE_14__ {int (* read_event_handler ) (TYPE_3__*,TYPE_4__*) ;TYPE_1__ peer; } ;
typedef TYPE_4__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_15__ {TYPE_4__* downstream; } ;
typedef TYPE_5__ ngx_http_lua_ctx_t ;
struct TYPE_12__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 void* ngx_http_block_reading ;
 TYPE_5__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 int ngx_http_lua_module ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int stub1 (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static void
ngx_http_lua_req_socket_rev_handler(ngx_http_request_t *r)
{
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_socket_tcp_upstream_t *u;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua request socket read event handler");

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        r->read_event_handler = ngx_http_block_reading;
        return;
    }

    u = ctx->downstream;
    if (u == ((void*)0) || u->peer.connection == ((void*)0)) {
        r->read_event_handler = ngx_http_block_reading;
        return;
    }

    u->read_event_handler(r, u);
}
