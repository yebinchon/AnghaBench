
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


struct TYPE_19__ {TYPE_1__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_18__ {TYPE_6__* connection; } ;
struct TYPE_20__ {TYPE_2__ udp_connection; } ;
typedef TYPE_4__ ngx_http_lua_socket_udp_upstream_t ;
struct TYPE_21__ {scalar_t__ log_socket_errors; } ;
typedef TYPE_5__ ngx_http_lua_loc_conf_t ;
struct TYPE_22__ {TYPE_15__* read; } ;
typedef TYPE_6__ ngx_connection_t ;
struct TYPE_17__ {int log; } ;
struct TYPE_16__ {scalar_t__ timer_set; scalar_t__ timedout; } ;


 int NGX_HTTP_LUA_SOCKET_FT_TIMEOUT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int ngx_del_timer (TYPE_15__*) ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_socket_udp_handle_error (TYPE_3__*,TYPE_4__*,int ) ;
 int ngx_http_lua_socket_udp_read (TYPE_3__*,TYPE_4__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static void
ngx_http_lua_socket_udp_read_handler(ngx_http_request_t *r,
    ngx_http_lua_socket_udp_upstream_t *u)
{
    ngx_connection_t *c;
    ngx_http_lua_loc_conf_t *llcf;

    c = u->udp_connection.connection;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua udp socket read handler");

    if (c->read->timedout) {
        c->read->timedout = 0;

        llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);

        if (llcf->log_socket_errors) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "lua udp socket read timed out");
        }

        ngx_http_lua_socket_udp_handle_error(r, u,
                                             NGX_HTTP_LUA_SOCKET_FT_TIMEOUT);
        return;
    }


    if (c->read->timer_set) {
        ngx_del_timer(c->read);
    }


    (void) ngx_http_lua_socket_udp_read(r, u);
}
