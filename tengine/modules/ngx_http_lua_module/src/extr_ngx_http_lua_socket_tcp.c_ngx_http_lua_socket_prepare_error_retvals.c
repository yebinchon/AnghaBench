
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int ngx_uint_t ;
typedef int ngx_http_request_t ;
struct TYPE_3__ {scalar_t__ socket_errno; } ;
typedef TYPE_1__ ngx_http_lua_socket_tcp_upstream_t ;
typedef int lua_State ;
typedef int errstr ;


 int NGX_HTTP_LUA_SOCKET_FT_BUFTOOSMALL ;
 int NGX_HTTP_LUA_SOCKET_FT_CLIENTABORT ;
 int NGX_HTTP_LUA_SOCKET_FT_CLOSED ;
 int NGX_HTTP_LUA_SOCKET_FT_NOMEM ;
 int NGX_HTTP_LUA_SOCKET_FT_RESOLVER ;
 int NGX_HTTP_LUA_SOCKET_FT_SSL ;
 int NGX_HTTP_LUA_SOCKET_FT_TIMEOUT ;
 int NGX_MAX_ERROR_STR ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushlstring (int *,char*,int) ;
 int lua_pushnil (int *) ;
 int * ngx_strerror (scalar_t__,int *,int) ;
 int * ngx_strerror_r (scalar_t__,int *,int) ;
 int ngx_strlow (int *,int *,int) ;

__attribute__((used)) static int
ngx_http_lua_socket_prepare_error_retvals(ngx_http_request_t *r,
    ngx_http_lua_socket_tcp_upstream_t *u, lua_State *L, ngx_uint_t ft_type)
{
    u_char errstr[NGX_MAX_ERROR_STR];
    u_char *p;

    if (ft_type & (NGX_HTTP_LUA_SOCKET_FT_RESOLVER
                   | NGX_HTTP_LUA_SOCKET_FT_SSL))
    {
        return 2;
    }

    lua_pushnil(L);

    if (ft_type & NGX_HTTP_LUA_SOCKET_FT_TIMEOUT) {
        lua_pushliteral(L, "timeout");

    } else if (ft_type & NGX_HTTP_LUA_SOCKET_FT_CLOSED) {
        lua_pushliteral(L, "closed");

    } else if (ft_type & NGX_HTTP_LUA_SOCKET_FT_BUFTOOSMALL) {
        lua_pushliteral(L, "buffer too small");

    } else if (ft_type & NGX_HTTP_LUA_SOCKET_FT_NOMEM) {
        lua_pushliteral(L, "no memory");

    } else if (ft_type & NGX_HTTP_LUA_SOCKET_FT_CLIENTABORT) {
        lua_pushliteral(L, "client aborted");

    } else {

        if (u->socket_errno) {



            p = ngx_strerror_r(u->socket_errno, errstr, sizeof(errstr));


            ngx_strlow(errstr, errstr, p - errstr);
            lua_pushlstring(L, (char *) errstr, p - errstr);

        } else {
            lua_pushliteral(L, "error");
        }
    }

    return 2;
}
