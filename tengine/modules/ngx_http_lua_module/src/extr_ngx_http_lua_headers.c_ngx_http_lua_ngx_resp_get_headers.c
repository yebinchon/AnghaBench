
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_18__ {size_t len; scalar_t__ data; } ;
struct TYPE_17__ {size_t len; scalar_t__ data; } ;
struct TYPE_19__ {scalar_t__ hash; TYPE_6__ value; TYPE_5__ key; } ;
typedef TYPE_7__ ngx_table_elt_t ;
struct TYPE_20__ {int nelts; TYPE_7__* elts; struct TYPE_20__* next; } ;
typedef TYPE_8__ ngx_list_part_t ;
struct TYPE_14__ {TYPE_8__ part; } ;
struct TYPE_13__ {size_t len; scalar_t__ data; } ;
struct TYPE_15__ {scalar_t__ content_length_n; scalar_t__ status; TYPE_2__ headers; int * content_length; TYPE_1__ content_type; } ;
struct TYPE_21__ {TYPE_4__* connection; TYPE_3__ headers_out; scalar_t__ chunked; scalar_t__ keepalive; } ;
typedef TYPE_9__ ngx_http_request_t ;
typedef int ngx_http_lua_ctx_t ;
typedef int lua_State ;
struct TYPE_16__ {int log; } ;


 int LUA_REGISTRYINDEX ;
 int NGX_HTTP_LUA_MAX_HEADERS ;
 scalar_t__ NGX_HTTP_SWITCHING_PROTOCOLS ;
 int NGX_LOG_DEBUG_HTTP ;
 int dd (char*,int) ;
 int headers_metatable_key ;
 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_createtable (int *,int ,int) ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 int * lua_newuserdata (int *,size_t) ;
 int lua_pushfstring (int *,char*,int) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushlstring (int *,char*,size_t) ;
 int lua_rawget (int *,int ) ;
 int lua_rawset (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int lua_toboolean (int *,int) ;
 int * ngx_http_get_module_ctx (TYPE_9__*,int ) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_9__*) ;
 TYPE_9__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_lightudata_mask (int ) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_set_multi_value_table (int *,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,...) ;
 int ngx_strlow (int *,scalar_t__,int) ;

__attribute__((used)) static int
ngx_http_lua_ngx_resp_get_headers(lua_State *L)
{
    ngx_list_part_t *part;
    ngx_table_elt_t *header;
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;
    u_char *lowcase_key = ((void*)0);
    size_t lowcase_key_sz = 0;
    ngx_uint_t i;
    int n;
    int max;
    int raw = 0;
    int count = 0;
    int truncated = 0;
    int extra = 0;

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

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return luaL_error(L, "no ctx found");
    }

    ngx_http_lua_check_fake_request(L, r);

    part = &r->headers_out.headers.part;
    count = part->nelts;
    while (part->next != ((void*)0)) {
        part = part->next;
        count += part->nelts;
    }

    lua_createtable(L, 0, count + 2);

    if (!raw) {
        lua_pushlightuserdata(L, ngx_http_lua_lightudata_mask(
                              headers_metatable_key));
        lua_rawget(L, LUA_REGISTRYINDEX);
        lua_setmetatable(L, -2);
    }


    if (r->headers_out.content_type.len) {
        extra++;
        lua_pushliteral(L, "content-type");
        lua_pushlstring(L, (char *) r->headers_out.content_type.data,
                        r->headers_out.content_type.len);
        lua_rawset(L, -3);
    }

    if (r->headers_out.content_length == ((void*)0)
        && r->headers_out.content_length_n >= 0)
    {
        extra++;
        lua_pushliteral(L, "content-length");
        lua_pushfstring(L, "%d", (int) r->headers_out.content_length_n);
        lua_rawset(L, -3);
    }

    extra++;
    lua_pushliteral(L, "connection");
    if (r->headers_out.status == NGX_HTTP_SWITCHING_PROTOCOLS) {
        lua_pushliteral(L, "upgrade");

    } else if (r->keepalive) {
        lua_pushliteral(L, "keep-alive");

    } else {
        lua_pushliteral(L, "close");
    }
    lua_rawset(L, -3);

    if (r->chunked) {
        extra++;
        lua_pushliteral(L, "transfer-encoding");
        lua_pushliteral(L, "chunked");
        lua_rawset(L, -3);
    }


    if (max > 0 && count + extra > max) {
        truncated = 1;
        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua exceeding response header limit %d > %d",
                       count + extra, max);
        count = max - extra;
    }

    part = &r->headers_out.headers.part;
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

        if (header[i].hash == 0) {
            continue;
        }

        if (raw) {
            lua_pushlstring(L, (char *) header[i].key.data, header[i].key.len);

        } else {


            if (header[i].key.len > lowcase_key_sz) {
                lowcase_key_sz = header[i].key.len * 2;



                lowcase_key = lua_newuserdata(L, lowcase_key_sz);
                lua_insert(L, 1);
            }

            ngx_strlow(lowcase_key, header[i].key.data, header[i].key.len);
            lua_pushlstring(L, (char *) lowcase_key, header[i].key.len);
        }



        lua_pushlstring(L, (char *) header[i].value.data,
                        header[i].value.len);


        ngx_http_lua_set_multi_value_table(L, -3);

        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "lua response header: \"%V: %V\"",
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
