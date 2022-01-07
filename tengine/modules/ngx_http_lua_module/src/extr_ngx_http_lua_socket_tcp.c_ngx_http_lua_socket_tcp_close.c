
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ngx_http_request_t ;
struct TYPE_8__ {int * connection; } ;
struct TYPE_9__ {scalar_t__ body_downstream; scalar_t__ raw_downstream; int * request; scalar_t__ write_closed; scalar_t__ read_closed; TYPE_1__ peer; } ;
typedef TYPE_2__ ngx_http_lua_socket_tcp_upstream_t ;
typedef int lua_State ;


 int LUA_TTABLE ;
 int SOCKET_CTX_INDEX ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int lua_rawgeti (int *,int,int ) ;
 TYPE_2__* lua_touserdata (int *,int) ;
 int * ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_socket_check_busy_connecting (int *,TYPE_2__*,int *) ;
 int ngx_http_lua_socket_check_busy_reading (int *,TYPE_2__*,int *) ;
 int ngx_http_lua_socket_check_busy_writing (int *,TYPE_2__*,int *) ;
 int ngx_http_lua_socket_tcp_finalize (int *,TYPE_2__*) ;

__attribute__((used)) static int
ngx_http_lua_socket_tcp_close(lua_State *L)
{
    ngx_http_request_t *r;
    ngx_http_lua_socket_tcp_upstream_t *u;

    if (lua_gettop(L) != 1) {
        return luaL_error(L, "expecting 1 argument "
                          "(including the object) but seen %d", lua_gettop(L));
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request found");
    }

    luaL_checktype(L, 1, LUA_TTABLE);

    lua_rawgeti(L, 1, SOCKET_CTX_INDEX);
    u = lua_touserdata(L, -1);
    lua_pop(L, 1);

    if (u == ((void*)0)
        || u->peer.connection == ((void*)0)
        || (u->read_closed && u->write_closed))
    {
        lua_pushnil(L);
        lua_pushliteral(L, "closed");
        return 2;
    }

    if (u->request != r) {
        return luaL_error(L, "bad request");
    }

    ngx_http_lua_socket_check_busy_connecting(r, u, L);
    ngx_http_lua_socket_check_busy_reading(r, u, L);
    ngx_http_lua_socket_check_busy_writing(r, u, L);

    if (u->raw_downstream || u->body_downstream) {
        lua_pushnil(L);
        lua_pushliteral(L, "attempt to close a request socket");
        return 2;
    }

    ngx_http_lua_socket_tcp_finalize(r, u);

    lua_pushinteger(L, 1);
    return 1;
}
