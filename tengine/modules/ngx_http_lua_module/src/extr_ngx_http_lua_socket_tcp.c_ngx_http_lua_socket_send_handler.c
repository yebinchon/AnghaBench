
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {TYPE_2__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_16__ {TYPE_7__* connection; } ;
struct TYPE_20__ {scalar_t__ request_bufs; TYPE_1__ peer; } ;
typedef TYPE_5__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_21__ {scalar_t__ log_socket_errors; } ;
typedef TYPE_6__ ngx_http_lua_loc_conf_t ;
struct TYPE_22__ {TYPE_3__* write; } ;
typedef TYPE_7__ ngx_connection_t ;
struct TYPE_18__ {scalar_t__ timedout; } ;
struct TYPE_17__ {int log; } ;


 int NGX_HTTP_LUA_SOCKET_FT_TIMEOUT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 TYPE_6__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_socket_handle_write_error (TYPE_4__*,TYPE_5__*,int ) ;
 int ngx_http_lua_socket_send (TYPE_4__*,TYPE_5__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_http_lua_socket_send_handler(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u)
{
    ngx_connection_t *c;
    ngx_http_lua_loc_conf_t *llcf;

    c = u->peer.connection;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket send handler");

    if (c->write->timedout) {
        llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);

        if (llcf->log_socket_errors) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "lua tcp socket write timed out");
        }

        ngx_http_lua_socket_handle_write_error(r, u,
                                               NGX_HTTP_LUA_SOCKET_FT_TIMEOUT);
        return;
    }

    if (u->request_bufs) {
        (void) ngx_http_lua_socket_send(r, u);
    }
}
