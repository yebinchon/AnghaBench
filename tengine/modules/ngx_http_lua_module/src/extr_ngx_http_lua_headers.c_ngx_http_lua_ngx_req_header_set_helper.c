
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_9__ {char* data; size_t len; } ;
typedef TYPE_1__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_10__ {scalar_t__ http_version; int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int lua_State ;


 scalar_t__ LUA_TNIL ;
 scalar_t__ LUA_TTABLE ;
 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_HTTP_VERSION_10 ;
 int dd (char*,int,char*,...) ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 size_t lua_objlen (int *,int) ;
 int lua_rawgeti (int *,int,size_t) ;
 scalar_t__ lua_type (int *,int) ;
 int ngx_http_lua_check_fake_request (int *,TYPE_2__*) ;
 TYPE_2__* ngx_http_lua_get_req (int *) ;
 scalar_t__ ngx_http_lua_set_input_header (TYPE_2__*,TYPE_1__,TYPE_1__,int) ;
 int ngx_memcpy (char*,char*,size_t) ;
 void* ngx_palloc (int ,size_t) ;
 int ngx_str_null (TYPE_1__*) ;

__attribute__((used)) static int
ngx_http_lua_ngx_req_header_set_helper(lua_State *L)
{
    ngx_http_request_t *r;
    u_char *p;
    ngx_str_t key;
    ngx_str_t value;
    ngx_uint_t i;
    size_t len;
    ngx_int_t rc;
    ngx_uint_t n;

    r = ngx_http_lua_get_req(L);
    if (r == ((void*)0)) {
        return luaL_error(L, "no request object found");
    }

    ngx_http_lua_check_fake_request(L, r);

    if (r->http_version < NGX_HTTP_VERSION_10) {
        return 0;
    }

    p = (u_char *) luaL_checklstring(L, 1, &len);

    dd("key: %.*s, len %d", (int) len, p, (int) len);
    key.data = ngx_palloc(r->pool, len + 1);
    if (key.data == ((void*)0)) {
        return luaL_error(L, "no memory");
    }

    ngx_memcpy(key.data, p, len);

    key.data[len] = '\0';

    key.len = len;

    if (lua_type(L, 2) == LUA_TNIL) {
        ngx_str_null(&value);

    } else if (lua_type(L, 2) == LUA_TTABLE) {
        n = lua_objlen(L, 2);
        if (n == 0) {
            ngx_str_null(&value);

        } else {
            for (i = 1; i <= n; i++) {
                dd("header value table index %d, top: %d", (int) i,
                   lua_gettop(L));

                lua_rawgeti(L, 2, i);
                p = (u_char *) luaL_checklstring(L, -1, &len);






                value.data = ngx_palloc(r->pool, len + 1);
                if (value.data == ((void*)0)) {
                    return luaL_error(L, "no memory");
                }

                ngx_memcpy(value.data, p, len + 1);
                value.len = len;

                rc = ngx_http_lua_set_input_header(r, key, value,
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






        p = (u_char *) luaL_checklstring(L, 2, &len);
        value.data = ngx_palloc(r->pool, len + 1);
        if (value.data == ((void*)0)) {
            return luaL_error(L, "no memory");
        }

        ngx_memcpy(value.data, p, len + 1);
        value.len = len;
    }

    dd("key: %.*s, value: %.*s",
       (int) key.len, key.data, (int) value.len, value.data);

    rc = ngx_http_lua_set_input_header(r, key, value, 1 );

    if (rc == NGX_ERROR) {
        return luaL_error(L, "failed to set header %s (error: %d)",
                          key.data, (int) rc);
    }

    return 0;
}
