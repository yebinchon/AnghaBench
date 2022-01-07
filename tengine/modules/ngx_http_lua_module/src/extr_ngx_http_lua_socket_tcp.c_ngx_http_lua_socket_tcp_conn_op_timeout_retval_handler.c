
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_http_request_t ;
typedef int ngx_http_lua_socket_tcp_upstream_t ;
typedef int lua_State ;


 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;

__attribute__((used)) static int
ngx_http_lua_socket_tcp_conn_op_timeout_retval_handler(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u, lua_State *L)
{
    lua_pushnil(L);
    lua_pushliteral(L, "timeout");
    return 2;
}
