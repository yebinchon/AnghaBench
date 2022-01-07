
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_7__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_8__ {int ft_type; scalar_t__ socket_errno; } ;
typedef TYPE_3__ ngx_http_lua_socket_udp_upstream_t ;
typedef int lua_State ;
typedef int errstr ;
struct TYPE_6__ {int log; } ;


 int NGX_HTTP_LUA_SOCKET_FT_BUFTOOSMALL ;
 int NGX_HTTP_LUA_SOCKET_FT_CLOSED ;
 int NGX_HTTP_LUA_SOCKET_FT_NOMEM ;
 int NGX_HTTP_LUA_SOCKET_FT_PARTIALWRITE ;
 int NGX_HTTP_LUA_SOCKET_FT_RESOLVER ;
 int NGX_HTTP_LUA_SOCKET_FT_TIMEOUT ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_MAX_ERROR_STR ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushlstring (int *,char*,int) ;
 int lua_pushnil (int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int * ngx_strerror (scalar_t__,int *,int) ;
 int * ngx_strerror_r (scalar_t__,int *,int) ;
 int ngx_strlow (int *,int *,int) ;

__attribute__((used)) static int
ngx_http_lua_socket_error_retval_handler(ngx_http_request_t *r,
    ngx_http_lua_socket_udp_upstream_t *u, lua_State *L)
{
    u_char errstr[NGX_MAX_ERROR_STR];
    u_char *p;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua udp socket error retval handler");

    if (u->ft_type & NGX_HTTP_LUA_SOCKET_FT_RESOLVER) {
        return 2;
    }

    lua_pushnil(L);

    if (u->ft_type & NGX_HTTP_LUA_SOCKET_FT_PARTIALWRITE) {
        lua_pushliteral(L, "partial write");

    } else if (u->ft_type & NGX_HTTP_LUA_SOCKET_FT_TIMEOUT) {
        lua_pushliteral(L, "timeout");

    } else if (u->ft_type & NGX_HTTP_LUA_SOCKET_FT_CLOSED) {
        lua_pushliteral(L, "closed");

    } else if (u->ft_type & NGX_HTTP_LUA_SOCKET_FT_BUFTOOSMALL) {
        lua_pushliteral(L, "buffer too small");

    } else if (u->ft_type & NGX_HTTP_LUA_SOCKET_FT_NOMEM) {
        lua_pushliteral(L, "no memory");

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
