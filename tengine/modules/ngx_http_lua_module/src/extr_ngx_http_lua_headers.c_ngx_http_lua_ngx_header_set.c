
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef char u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_18__ {char* data; size_t len; } ;
typedef TYPE_2__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_19__ {int pool; TYPE_1__* connection; scalar_t__ header_sent; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_20__ {scalar_t__ transform_underscores_in_resp_headers; } ;
typedef TYPE_4__ ngx_http_lua_loc_conf_t ;
struct TYPE_21__ {int headers_set; scalar_t__ header_sent; } ;
typedef TYPE_5__ ngx_http_lua_ctx_t ;
typedef int lua_State ;
struct TYPE_17__ {int log; } ;


 scalar_t__ LUA_TNIL ;
 scalar_t__ LUA_TTABLE ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_ERR ;
 int dd (char*,int,...) ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,...) ;
 size_t lua_objlen (int *,int) ;
 int lua_rawgeti (int *,int,size_t) ;
 scalar_t__ lua_type (int *,int) ;
 TYPE_5__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 TYPE_4__* ngx_http_get_module_loc_conf (TYPE_3__*,int ) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_3__*) ;
 TYPE_3__* ngx_http_lua_get_req (int *) ;
 int ngx_http_lua_module ;
 scalar_t__ ngx_http_lua_set_output_header (TYPE_3__*,TYPE_5__*,TYPE_2__,TYPE_2__,int) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_memcpy (char*,char*,size_t) ;
 void* ngx_palloc (int ,size_t) ;
 int ngx_str_null (TYPE_2__*) ;

__attribute__((used)) static int
ngx_http_lua_ngx_header_set(lua_State *L)
{
    ngx_http_request_t *r;
    u_char *p;
    ngx_str_t key;
    ngx_str_t value;
    ngx_uint_t i;
    size_t len;
    ngx_http_lua_ctx_t *ctx;
    ngx_int_t rc;
    ngx_uint_t n;
    ngx_http_lua_loc_conf_t *llcf;

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request object found");
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        return luaL_error(L, "no ctx");
    }

    ngx_http_lua_check_fake_request(L, r);

    if (r->header_sent || ctx->header_sent) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0, "attempt to "
                      "set ngx.header.HEADER after sending out "
                      "response headers");
        return 0;
    }


    p = (u_char *) luaL_checklstring(L, 2, &len);

    dd("key: %.*s, len %d", (int) len, p, (int) len);

    key.data = ngx_palloc(r->pool, len + 1);
    if (key.data == ((void*)0)) {
        return luaL_error(L, "no memory");
    }

    ngx_memcpy(key.data, p, len);
    key.data[len] = '\0';
    key.len = len;

    llcf = ngx_http_get_module_loc_conf(r, ngx_http_lua_module);

    if (llcf->transform_underscores_in_resp_headers) {

        p = key.data;
        for (i = 0; i < len; i++) {
            if (p[i] == '_') {
                p[i] = '-';
            }
        }
    }

    ctx->headers_set = 1;

    if (lua_type(L, 3) == LUA_TNIL) {
        ngx_str_null(&value);

    } else if (lua_type(L, 3) == LUA_TTABLE) {
        n = lua_objlen(L, 3);
        if (n == 0) {
            ngx_str_null(&value);

        } else {
            for (i = 1; i <= n; i++) {
                dd("header value table index %d", (int) i);

                lua_rawgeti(L, 3, i);
                p = (u_char *) luaL_checklstring(L, -1, &len);

                value.data = ngx_palloc(r->pool, len);
                if (value.data == ((void*)0)) {
                    return luaL_error(L, "no memory");
                }

                ngx_memcpy(value.data, p, len);
                value.len = len;

                rc = ngx_http_lua_set_output_header(r, ctx, key, value,
                                                    i == 1 );

                if (rc == NGX_ERROR) {
                    return luaL_error(L,
                                      "failed to set header %s (error: %d)",
                                      key.data, (int) rc);
                }
            }

            return 0;
        }

    } else {
        p = (u_char *) luaL_checklstring(L, 3, &len);
        value.data = ngx_palloc(r->pool, len);
        if (value.data == ((void*)0)) {
            return luaL_error(L, "no memory");
        }

        ngx_memcpy(value.data, p, len);
        value.len = len;
    }

    dd("key: %.*s, value: %.*s",
       (int) key.len, key.data, (int) value.len, value.data);

    rc = ngx_http_lua_set_output_header(r, ctx, key, value, 1 );

    if (rc == NGX_ERROR) {
        return luaL_error(L, "failed to set header %s (error: %d)",
                          key.data, (int) rc);
    }

    return 0;
}
