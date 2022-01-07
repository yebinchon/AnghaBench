
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {int request_len; scalar_t__ ft_type; } ;
typedef TYPE_3__ ngx_http_lua_socket_tcp_upstream_t ;
typedef int lua_State ;
struct TYPE_8__ {int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int lua_pushinteger (int *,int ) ;
 int ngx_http_lua_socket_write_error_retval_handler (TYPE_2__*,TYPE_3__*,int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;

__attribute__((used)) static int
ngx_http_lua_socket_tcp_send_retval_handler(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u, lua_State *L)
{
    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket send return value handler");

    if (u->ft_type) {
        return ngx_http_lua_socket_write_error_retval_handler(r, u, L);
    }

    lua_pushinteger(L, u->request_len);
    return 1;
}
