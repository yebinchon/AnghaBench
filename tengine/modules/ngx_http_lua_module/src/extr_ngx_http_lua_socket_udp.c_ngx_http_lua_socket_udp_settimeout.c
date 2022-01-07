
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ngx_msec_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_5__ {TYPE_1__* conf; scalar_t__ read_timeout; } ;
typedef TYPE_2__ ngx_http_lua_socket_udp_upstream_t ;
typedef int lua_State ;
struct TYPE_4__ {scalar_t__ read_timeout; } ;


 int SOCKET_CTX_INDEX ;
 int SOCKET_TIMEOUT_INDEX ;
 int luaL_error (int *,char*,int) ;
 int lua_gettop (int *) ;
 int lua_rawgeti (int *,int,int ) ;
 int lua_rawseti (int *,int,int ) ;
 scalar_t__ lua_tonumber (int *,int) ;
 TYPE_2__* lua_touserdata (int *,int) ;

__attribute__((used)) static int
ngx_http_lua_socket_udp_settimeout(lua_State *L)
{
    int n;
    ngx_int_t timeout;

    ngx_http_lua_socket_udp_upstream_t *u;

    n = lua_gettop(L);

    if (n != 2) {
        return luaL_error(L, "ngx.socket settimout: expecting at least 2 "
                          "arguments (including the object) but seen %d",
                          lua_gettop(L));
    }

    timeout = (ngx_int_t) lua_tonumber(L, 2);

    lua_rawseti(L, 1, SOCKET_TIMEOUT_INDEX);

    lua_rawgeti(L, 1, SOCKET_CTX_INDEX);
    u = lua_touserdata(L, -1);

    if (u) {
        if (timeout > 0) {
            u->read_timeout = (ngx_msec_t) timeout;

        } else {
            u->read_timeout = u->conf->read_timeout;
        }
    }

    return 0;
}
