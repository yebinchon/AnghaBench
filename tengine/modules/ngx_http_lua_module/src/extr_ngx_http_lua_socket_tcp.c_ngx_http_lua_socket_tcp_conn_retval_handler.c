
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_4__ {scalar_t__ ft_type; } ;
typedef TYPE_1__ ngx_http_lua_socket_tcp_upstream_t ;
typedef int lua_State ;


 int lua_pushinteger (int *,int) ;
 int ngx_http_lua_socket_conn_error_retval_handler (int *,TYPE_1__*,int *) ;

__attribute__((used)) static int
ngx_http_lua_socket_tcp_conn_retval_handler(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u, lua_State *L)
{
    if (u->ft_type) {
        return ngx_http_lua_socket_conn_error_retval_handler(r, u, L);
    }

    lua_pushinteger(L, 1);
    return 1;
}
