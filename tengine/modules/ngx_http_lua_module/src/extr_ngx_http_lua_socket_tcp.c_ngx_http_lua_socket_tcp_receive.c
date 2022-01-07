
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_20__ {char* data; int len; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_21__ {TYPE_2__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_18__ {int * connection; } ;
struct TYPE_22__ {size_t length; size_t rest; void* input_filter; int read_timeout; TYPE_4__* request; scalar_t__ eof; scalar_t__ ft_type; TYPE_1__ peer; scalar_t__ read_closed; } ;
typedef TYPE_5__ ngx_http_lua_socket_tcp_upstream_t ;
struct TYPE_23__ {scalar_t__ log_socket_errors; } ;
typedef TYPE_6__ ngx_http_lua_loc_conf_t ;
typedef int lua_State ;
typedef int lua_Integer ;
struct TYPE_19__ {int log; } ;




 int LUA_TTABLE ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 int SOCKET_CTX_INDEX ;
 int luaL_argerror (int *,int,char*) ;
 scalar_t__ luaL_checklstring (int *,int,int*) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isnumber (int *,int) ;
 scalar_t__ lua_pushfstring (int *,char*,char*) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int lua_rawgeti (int *,int,int ) ;
 int lua_tointeger (int *,int) ;
 TYPE_5__* lua_touserdata (int *,int) ;
 int lua_type (int *,int) ;
 TYPE_6__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 TYPE_4__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_socket_check_busy_connecting (TYPE_4__*,TYPE_5__*,int *) ;
 int ngx_http_lua_socket_check_busy_reading (TYPE_4__*,TYPE_5__*,int *) ;
 void* ngx_http_lua_socket_read_all ;
 void* ngx_http_lua_socket_read_chunk ;
 void* ngx_http_lua_socket_read_line ;
 int ngx_http_lua_socket_tcp_receive_helper (TYPE_4__*,TYPE_5__*,int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_5__*,int *,int,int) ;

__attribute__((used)) static int
ngx_http_lua_socket_tcp_receive(lua_State *L)
{
    ngx_http_request_t *r;
    ngx_http_lua_socket_tcp_upstream_t *u;
    int n;
    ngx_str_t pat;
    lua_Integer bytes;
    char *p;
    int typ;
    ngx_http_lua_loc_conf_t *llcf;

    n = lua_gettop(L);
    if (n != 1 && n != 2) {
        return luaL_error(L, "expecting 1 or 2 arguments "
                          "(including the object), but got %d", n);
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request found");
    }

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket calling receive() method");

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

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "lua tcp socket read timeout: %M", u->read_timeout);

    if (n > 1) {
        if (lua_isnumber(L, 2)) {
            typ = 129;

        } else {
            typ = lua_type(L, 2);
        }

        switch (typ) {
        case 128:
            pat.data = (u_char *) luaL_checklstring(L, 2, &pat.len);
            if (pat.len != 2 || pat.data[0] != '*') {
                p = (char *) lua_pushfstring(L, "bad pattern argument: %s",
                                             (char *) pat.data);

                return luaL_argerror(L, 2, p);
            }

            switch (pat.data[1]) {
            case 'l':
                u->input_filter = ngx_http_lua_socket_read_line;
                break;

            case 'a':
                u->input_filter = ngx_http_lua_socket_read_all;
                break;

            default:
                return luaL_argerror(L, 2, "bad pattern argument");
                break;
            }

            u->length = 0;
            u->rest = 0;

            break;

        case 129:
            bytes = lua_tointeger(L, 2);
            if (bytes < 0) {
                return luaL_argerror(L, 2, "bad pattern argument");
            }


            if (bytes == 0) {
                lua_pushliteral(L, "");
                return 1;
            }


            u->input_filter = ngx_http_lua_socket_read_chunk;
            u->length = (size_t) bytes;
            u->rest = u->length;

            break;

        default:
            return luaL_argerror(L, 2, "bad pattern argument");
            break;
        }

    } else {
        u->input_filter = ngx_http_lua_socket_read_line;
        u->length = 0;
        u->rest = 0;
    }

    return ngx_http_lua_socket_tcp_receive_helper(r, u, L);
}
