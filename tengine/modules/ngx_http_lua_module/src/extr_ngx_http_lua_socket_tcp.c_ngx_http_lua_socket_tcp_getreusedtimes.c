
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * connection; } ;
struct TYPE_5__ {int reused; scalar_t__ write_closed; scalar_t__ read_closed; TYPE_1__ peer; } ;
typedef TYPE_2__ ngx_http_lua_socket_tcp_upstream_t ;
typedef int lua_State ;


 int LUA_TTABLE ;
 int SOCKET_CTX_INDEX ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*,int) ;
 int lua_gettop (int *) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int lua_rawgeti (int *,int,int ) ;
 TYPE_2__* lua_touserdata (int *,int) ;

__attribute__((used)) static int
ngx_http_lua_socket_tcp_getreusedtimes(lua_State *L)
{
    ngx_http_lua_socket_tcp_upstream_t *u;

    if (lua_gettop(L) != 1) {
        return luaL_error(L, "expecting 1 argument "
                          "(including the object), but got %d", lua_gettop(L));
    }

    luaL_checktype(L, 1, LUA_TTABLE);

    lua_rawgeti(L, 1, SOCKET_CTX_INDEX);
    u = lua_touserdata(L, -1);

    if (u == ((void*)0)
        || u->peer.connection == ((void*)0)
        || (u->read_closed && u->write_closed))
    {
        lua_pushnil(L);
        lua_pushliteral(L, "closed");
        return 2;
    }

    lua_pushinteger(L, u->reused);
    return 1;
}
