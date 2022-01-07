
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {TYPE_2__* connection; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_17__ {int * connection; } ;
struct TYPE_20__ {size_t rest; size_t length; int input_filter; TYPE_3__* request; scalar_t__ eof; scalar_t__ ft_type; TYPE_1__ peer; scalar_t__ read_closed; } ;
typedef TYPE_4__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_21__ {scalar_t__ log_socket_errors; } ;
typedef TYPE_5__ ngx_http_lua_loc_conf_t ;
typedef int lua_State ;
typedef scalar_t__ lua_Integer ;
struct TYPE_18__ {int log; } ;


 int LUA_TTABLE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int SOCKET_CTX_INDEX ;
 int luaL_argerror (int *,int,char*) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 int lua_isnumber (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int lua_rawgeti (int *,int,int ) ;
 scalar_t__ lua_tointeger (int *,int) ;
 TYPE_4__* lua_touserdata (int *,int) ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;
 TYPE_3__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_socket_check_busy_connecting (TYPE_3__*,TYPE_4__*,int *) ;
 int ngx_http_lua_socket_check_busy_reading (TYPE_3__*,TYPE_4__*,int *) ;
 int ngx_http_lua_socket_read_any ;
 int ngx_http_lua_socket_tcp_receive_helper (TYPE_3__*,TYPE_4__*,int *) ;
 int ngx_log_debug1 (int ,int ,int ,char*,size_t) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_4__*,int *,int,int) ;

__attribute__((used)) static int
ngx_http_lua_socket_tcp_receiveany(lua_State *L)
{
    int n;
    lua_Integer bytes;
    ngx_http_request_t *r;
    ngx_http_lua_loc_conf_t *llcf;
    ngx_http_lua_socket_tcp_upstream_t *u;

    n = lua_gettop(L);
    if (n != 2) {
        return luaL_error(L, "expecting 2 arguments "
                          "(including the object), but got %d", n);
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request found");
    }

    luaL_checktype(L, 1, LUA_TTABLE);

    lua_rawgeti(L, 1, SOCKET_CTX_INDEX);
    u = lua_touserdata(L, -1);

    if (u == ((void*)0) || u->peer.connection == ((void*)0) || u->read_closed) {

        llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);

        if (llcf->log_socket_errors) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "attempt to receive data on a closed socket: u:%p, "
                          "c:%p, ft:%d eof:%d",
                          u, u ? u->peer.connection : ((void*)0),
                          u ? (int) u->ft_type : 0, u ? (int) u->eof : 0);
        }

        lua_pushnil(L);
        lua_pushliteral(L, "closed");
        return 2;
    }

    if (u->request != r) {
        return luaL_error(L, "bad request");
    }

    ngx_http_lua_socket_check_busy_connecting(r, u, L);
    ngx_http_lua_socket_check_busy_reading(r, u, L);

    if (!lua_isnumber(L, 2)) {
        return luaL_argerror(L, 2, "bad max argument");
    }

    bytes = lua_tointeger(L, 2);
    if (bytes <= 0) {
        return luaL_argerror(L, 2, "bad max argument");
    }

    u->input_filter = ngx_http_lua_socket_read_any;
    u->rest = (size_t) bytes;
    u->length = u->rest;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket calling receiveany() method to read at "
                   "most %uz bytes", u->rest);

    return ngx_http_lua_socket_tcp_receive_helper(r, u, L);
}
