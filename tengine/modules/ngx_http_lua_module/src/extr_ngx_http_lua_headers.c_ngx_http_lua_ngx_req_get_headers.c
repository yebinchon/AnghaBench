
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_15__ {int len; scalar_t__ data; } ;
struct TYPE_14__ {int len; scalar_t__ data; } ;
struct TYPE_16__ {TYPE_5__ value; TYPE_4__ key; scalar_t__ lowcase_key; } ;
typedef TYPE_6__ ngx_table_elt_t ;
struct TYPE_17__ {int nelts; TYPE_6__* elts; struct TYPE_17__* next; } ;
typedef TYPE_7__ ngx_list_part_t ;
struct TYPE_11__ {TYPE_7__ part; } ;
struct TYPE_12__ {TYPE_1__ headers; } ;
struct TYPE_18__ {TYPE_3__* connection; TYPE_2__ headers_in; } ;
typedef TYPE_8__ ngx_http_request_t ;
typedef int lua_State ;
struct TYPE_13__ {int log; } ;


 int LUA_REGISTRYINDEX ;
 int NGX_HTTP_LUA_MAX_HEADERS ;
 int NGX_LOG_DEBUG_HTTP ;
 int dd (char*,int) ;
 int headers_metatable_key ;
 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_createtable (int *,int ,int) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushlstring (int *,char*,int ) ;
 int lua_rawget (int *,int ) ;
 int lua_setmetatable (int *,int) ;
 int lua_toboolean (int *,int) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_8__*) ;
 TYPE_8__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_http_lua_set_multi_value_table (int *,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,...) ;

__attribute__((used)) static int
ngx_http_lua_ngx_req_get_headers(lua_State *L)
{
    ngx_list_part_t *part;
    ngx_table_elt_t *header;
    ngx_http_request_t *r;
    ngx_uint_t i;
    int n;
    int max;
    int raw = 0;
    int count = 0;
    int truncated = 0;

    n = lua_gettop(L);

    if (n >= 1) {
        if (lua_isnil(L, 1)) {
            max = NGX_HTTP_LUA_MAX_HEADERS;

        } else {
            max = luaL_checkinteger(L, 1);
        }

        if (n >= 2) {
            raw = lua_toboolean(L, 2);
        }

    } else {
        max = NGX_HTTP_LUA_MAX_HEADERS;
    }

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request object found");
    }

    ngx_http_lua_check_fake_request(L, r);

    part = &r->headers_in.headers.part;
    count = part->nelts;
    while (part->next != ((void*)0)) {
        part = part->next;
        count += part->nelts;
    }

    if (max > 0 && count > max) {
        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua exceeding request header limit %d > %d", count,
                       max);
        count = max;
        truncated = 1;
    }

    lua_createtable(L, 0, count);

    if (!raw) {
        lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                              headers_metatable_key));
        lua_rawget(L, LUA_REGISTRYINDEX);
        lua_setmetatable(L, -2);
    }

    part = &r->headers_in.headers.part;
    header = part->elts;

    for (i = 0; ; i++) {

        dd("stack top: %d", lua_gettop(L));

        if (i >= part->nelts) {
            if (part->next == ((void*)0)) {
                break;
            }

            part = part->next;
            header = part->elts;
            i = 0;
        }

        if (raw) {
            lua_pushlstring(L, (char *) header[i].key.data, header[i].key.len);

        } else {
            lua_pushlstring(L, (char *) header[i].lowcase_key,
                            header[i].key.len);
        }



        lua_pushlstring(L, (char *) header[i].value.data,
                        header[i].value.len);

        ngx_http_lua_set_multi_value_table(L, -3);

        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua request header: \"%V: %V\"",
                       &header[i].key, &header[i].value);

        if (--count <= 0) {
            break;
        }
    }

    if (truncated) {
        lua_pushliteral(L, "truncated");
        return 2;
    }

    return 1;
}
