
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_17__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_21__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_25__ {int sockaddr; TYPE_5__* connection; } ;
struct TYPE_22__ {scalar_t__ socket_errno; TYPE_8__ peer; } ;
typedef TYPE_3__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_23__ {scalar_t__ log_socket_errors; } ;
typedef TYPE_4__ ngx_http_lua_loc_conf_t ;
typedef scalar_t__ ngx_err_t ;
struct TYPE_24__ {int read; TYPE_17__* write; int addr_text; } ;
typedef TYPE_5__ ngx_connection_t ;
struct TYPE_20__ {int log; } ;
struct TYPE_19__ {scalar_t__ timer_set; scalar_t__ timedout; } ;


 int NGX_HTTP_LUA_SOCKET_FT_ERROR ;
 int NGX_HTTP_LUA_SOCKET_FT_TIMEOUT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_del_timer (TYPE_17__*) ;
 scalar_t__ ngx_handle_read_event (int ,int ) ;
 scalar_t__ ngx_handle_write_event (TYPE_17__*,int ) ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_2__*,int ) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_socket_handle_conn_error (TYPE_2__*,TYPE_3__*,int ) ;
 int ngx_http_lua_socket_handle_conn_success (TYPE_2__*,TYPE_3__*) ;
 int ngx_http_lua_socket_init_peer_connection_addr_text (TYPE_8__*) ;
 scalar_t__ ngx_http_lua_socket_test_connect (TYPE_2__*,TYPE_5__*) ;
 int ngx_inet_get_port (int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_error (int ,int ,int ,char*,int *,int ) ;

__attribute__((used)) static void
ngx_http_lua_socket_connected_handler(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u)
{
    ngx_int_t rc;
    ngx_connection_t *c;
    ngx_http_lua_loc_conf_t *llcf;

    c = u->peer.connection;

    if (c->write->timedout) {

        llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);

        if (llcf->log_socket_errors) {
            ngx_http_lua_socket_init_peer_connection_addr_text(&u->peer);
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "lua tcp socket connect timed out,"
                          " when connecting to %V:%ud",
                          &c->addr_text, ngx_inet_get_port(u->peer.sockaddr));
        }

        ngx_http_lua_socket_handle_conn_error(r, u,
                                              NGX_HTTP_LUA_SOCKET_FT_TIMEOUT);
        return;
    }

    if (c->write->timer_set) {
        ngx_del_timer(c->write);
    }

    rc = ngx_http_lua_socket_test_connect(r, c);
    if (rc != NGX_OK) {
        if (rc > 0) {
            u->socket_errno = (ngx_err_t) rc;
        }

        ngx_http_lua_socket_handle_conn_error(r, u,
                                              NGX_HTTP_LUA_SOCKET_FT_ERROR);
        return;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket connected");






    if (ngx_handle_write_event(c->write, 0) != NGX_OK) {
        ngx_http_lua_socket_handle_conn_error(r, u,
                                              NGX_HTTP_LUA_SOCKET_FT_ERROR);
        return;
    }

    if (ngx_handle_read_event(c->read, 0) != NGX_OK) {
        ngx_http_lua_socket_handle_conn_error(r, u,
                                              NGX_HTTP_LUA_SOCKET_FT_ERROR);
        return;
    }

    ngx_http_lua_socket_handle_conn_success(r, u);
}
