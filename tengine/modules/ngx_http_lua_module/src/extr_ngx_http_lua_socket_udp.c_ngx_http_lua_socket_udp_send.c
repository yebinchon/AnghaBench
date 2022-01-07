
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ssize_t ;
struct TYPE_16__ {size_t len; int * data; } ;
typedef TYPE_3__ ngx_str_t ;
struct TYPE_17__ {TYPE_1__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_15__ {int * connection; } ;
struct TYPE_18__ {int ft_type; int socket_errno; TYPE_2__ udp_connection; scalar_t__ waiting; TYPE_4__* request; } ;
typedef TYPE_5__ ngx_http_lua_socket_udp_upstream_t ;
struct TYPE_19__ {scalar_t__ log_socket_errors; } ;
typedef TYPE_6__ ngx_http_lua_loc_conf_t ;
typedef int lua_State ;
struct TYPE_14__ {int log; } ;







 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_LUA_SOCKET_FT_PARTIALWRITE ;
 int NGX_LOG_ERR ;
 int SOCKET_CTX_INDEX ;
 int dd (char*,...) ;
 int luaL_argerror (int *,int,char const*) ;
 int luaL_checktype (int *,int,int) ;
 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 int * lua_newuserdata (int *,size_t) ;
 int lua_pop (int *,int) ;
 char* lua_pushfstring (int *,char*,int ) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushnil (int *) ;
 int lua_rawgeti (int *,int,int ) ;
 int lua_toboolean (int *,int) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 TYPE_5__* lua_touserdata (int *,int) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int) ;
 TYPE_6__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 size_t ngx_http_lua_calc_strlen_in_table (int *,int,int,int) ;
 int ngx_http_lua_copy_str_in_table (int *,int,int *) ;
 TYPE_4__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_socket_error_retval_handler (TYPE_4__*,TYPE_5__*,int *) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_5__*,int *) ;
 int ngx_memcpy (int *,int *,size_t) ;
 scalar_t__ ngx_send (int *,int *,size_t) ;
 int ngx_socket_errno ;

__attribute__((used)) static int
ngx_http_lua_socket_udp_send(lua_State *L)
{
    ssize_t n;
    ngx_http_request_t *r;
    u_char *p;
    size_t len;
    ngx_http_lua_socket_udp_upstream_t *u;
    int type;
    const char *msg;
    ngx_str_t query;
    ngx_http_lua_loc_conf_t *llcf;

    if (lua_gettop(L) != 2) {
        return luaL_error(L, "expecting 2 arguments (including the object), "
                          "but got %d", lua_gettop(L));
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "request object not found");
    }

    luaL_checktype(L, 1, 128);

    lua_rawgeti(L, 1, SOCKET_CTX_INDEX);
    u = lua_touserdata(L, -1);
    lua_pop(L, 1);

    if (u == ((void*)0) || u->udp_connection.connection == ((void*)0)) {
        llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);

        if (llcf->log_socket_errors) {
            ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                          "attempt to send data on a closed socket: u:%p, c:%p",
                          u, u ? u->udp_connection.connection : ((void*)0));
        }

        lua_pushnil(L);
        lua_pushliteral(L, "closed");
        return 2;
    }

    if (u->request != r) {
        return luaL_error(L, "bad request");
    }

    if (u->ft_type) {
        u->ft_type = 0;
    }

    if (u->waiting) {
        lua_pushnil(L);
        lua_pushliteral(L, "socket busy");
        return 2;
    }

    type = lua_type(L, 2);
    switch (type) {
        case 130:
        case 129:
            lua_tolstring(L, 2, &len);
            break;

        case 128:
            len = ngx_http_lua_calc_strlen_in_table(L, 2, 2, 1 );
            break;

        case 131:
            len = sizeof("nil") - 1;
            break;

        case 132:
            if (lua_toboolean(L, 2)) {
                len = sizeof("true") - 1;

            } else {
                len = sizeof("false") - 1;
            }

            break;

        default:
            msg = lua_pushfstring(L, "string, number, boolean, nil, "
                                  "or array table expected, got %s",
                                  lua_typename(L, type));

            return luaL_argerror(L, 2, msg);
    }

    query.data = lua_newuserdata(L, len);
    query.len = len;

    switch (type) {
        case 130:
        case 129:
            p = (u_char *) lua_tolstring(L, 2, &len);
            ngx_memcpy(query.data, (u_char *) p, len);
            break;

        case 128:
            (void) ngx_http_lua_copy_str_in_table(L, 2, query.data);
            break;

        case 131:
            p = query.data;
            *p++ = 'n';
            *p++ = 'i';
            *p++ = 'l';
            break;

        case 132:
            p = query.data;

            if (lua_toboolean(L, 2)) {
                *p++ = 't';
                *p++ = 'r';
                *p++ = 'u';
                *p++ = 'e';

            } else {
                *p++ = 'f';
                *p++ = 'a';
                *p++ = 'l';
                *p++ = 's';
                *p++ = 'e';
            }

            break;

        default:
            return luaL_error(L, "impossible to reach here");
    }

    u->ft_type = 0;




    u->waiting = 0;


    dd("sending query %.*s", (int) query.len, query.data);

    n = ngx_send(u->udp_connection.connection, query.data, query.len);

    dd("ngx_send returns %d (query len %d)", (int) n, (int) query.len);

    if (n == NGX_ERROR || n == NGX_AGAIN) {
        u->socket_errno = ngx_socket_errno;

        return ngx_http_lua_socket_error_retval_handler(r, u, L);
    }

    if (n != (ssize_t) query.len) {
        dd("not the while query was sent");

        u->ft_type |= NGX_HTTP_LUA_SOCKET_FT_PARTIALWRITE;
        return ngx_http_lua_socket_error_retval_handler(r, u, L);
    }

    dd("n == len");

    lua_pushinteger(L, 1);
    return 1;
}
