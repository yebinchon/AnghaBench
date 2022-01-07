
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
typedef int ssize_t ;
struct TYPE_5__ {size_t len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_6__ {int pool; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int lua_State ;






 int NGX_ESCAPE_URI_COMPONENT ;
 int dd (char*,...) ;
 int luaL_error (int *,char*,...) ;
 int luaL_typename (int *,int) ;
 int lua_gettop (int *) ;
 int lua_isboolean (int *,int) ;
 int * lua_newuserdata (int *,size_t) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_toboolean (int *,int) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 int lua_type (int *,int) ;
 int * ngx_copy (int *,int *,size_t) ;
 int ngx_http_lua_escape_uri (int *,int *,size_t,int ) ;
 int * ngx_palloc (int ,size_t) ;

void
ngx_http_lua_process_args_option(ngx_http_request_t *r, lua_State *L,
    int table, ngx_str_t *args)
{
    u_char *key;
    size_t key_len;
    u_char *value;
    size_t value_len;
    size_t len = 0;
    size_t key_escape = 0;
    uintptr_t total_escape = 0;
    int n;
    int i;
    u_char *p;

    if (table < 0) {
        table = lua_gettop(L) + table + 1;
    }

    n = 0;
    lua_pushnil(L);
    while (lua_next(L, table) != 0) {
        if (lua_type(L, -2) != 129) {
            luaL_error(L, "attempt to use a non-string key in the "
                       "\"args\" option table");
            return;
        }

        key = (u_char *) lua_tolstring(L, -2, &key_len);

        key_escape = 2 * ngx_http_lua_escape_uri(((void*)0), key, key_len,
                                                 NGX_ESCAPE_URI_COMPONENT);
        total_escape += key_escape;

        switch (lua_type(L, -1)) {
        case 130:
        case 129:
            value = (u_char *) lua_tolstring(L, -1, &value_len);

            total_escape += 2 * ngx_http_lua_escape_uri(((void*)0), value, value_len,
                                                      NGX_ESCAPE_URI_COMPONENT);

            len += key_len + value_len + (sizeof("=") - 1);
            n++;

            break;

        case 131:
            if (lua_toboolean(L, -1)) {
                len += key_len;
                n++;
            }

            break;

        case 128:

            i = 0;
            lua_pushnil(L);
            while (lua_next(L, -2) != 0) {
                if (lua_isboolean(L, -1)) {
                    if (lua_toboolean(L, -1)) {
                        len += key_len;

                    } else {
                        lua_pop(L, 1);
                        continue;
                    }

                } else {
                    value = (u_char *) lua_tolstring(L, -1, &value_len);

                    if (value == ((void*)0)) {
                        luaL_error(L, "attempt to use %s as query arg value",
                                   luaL_typename(L, -1));
                        return;
                    }

                    total_escape +=
                        2 * ngx_http_lua_escape_uri(((void*)0), value,
                                                    value_len,
                                                    NGX_ESCAPE_URI_COMPONENT);

                    len += key_len + value_len + (sizeof("=") - 1);
                }

                if (i++ > 0) {
                    total_escape += key_escape;
                }

                n++;
                lua_pop(L, 1);
            }

            break;

        default:
            luaL_error(L, "attempt to use %s as query arg value",
                       luaL_typename(L, -1));
            return;
        }

        lua_pop(L, 1);
    }

    len += (size_t) total_escape;

    if (n > 1) {
        len += (n - 1) * (sizeof("&") - 1);
    }

    dd("len 1: %d", (int) len);

    if (r) {
        p = ngx_palloc(r->pool, len);
        if (p == ((void*)0)) {
            luaL_error(L, "no memory");
            return;
        }

    } else {
        p = lua_newuserdata(L, len);
    }

    args->data = p;
    args->len = len;

    i = 0;
    lua_pushnil(L);
    while (lua_next(L, table) != 0) {
        key = (u_char *) lua_tolstring(L, -2, &key_len);

        switch (lua_type(L, -1)) {
        case 130:
        case 129:

            if (total_escape) {
                p = (u_char *) ngx_http_lua_escape_uri(p, key, key_len,
                                                       NGX_ESCAPE_URI_COMPONENT
                                                       );

            } else {
                dd("shortcut: no escape required");

                p = ngx_copy(p, key, key_len);
            }

            *p++ = '=';

            value = (u_char *) lua_tolstring(L, -1, &value_len);

            if (total_escape) {
                p = (u_char *) ngx_http_lua_escape_uri(p, value, value_len,
                                                       NGX_ESCAPE_URI_COMPONENT
                                                       );

            } else {
                p = ngx_copy(p, value, value_len);
            }

            if (i != n - 1) {

                *p++ = '&';
            }

            i++;

            break;

        case 131:
            if (lua_toboolean(L, -1)) {
                if (total_escape) {
                    p = (u_char *) ngx_http_lua_escape_uri(p, key, key_len,
                                                NGX_ESCAPE_URI_COMPONENT);

                } else {
                    dd("shortcut: no escape required");

                    p = ngx_copy(p, key, key_len);
                }

                if (i != n - 1) {

                    *p++ = '&';
                }

                i++;
            }

            break;

        case 128:

            lua_pushnil(L);
            while (lua_next(L, -2) != 0) {

                if (lua_isboolean(L, -1)) {
                    if (lua_toboolean(L, -1)) {
                        if (total_escape) {
                            p = (u_char *) ngx_http_lua_escape_uri(p, key,
    key_len,
    NGX_ESCAPE_URI_COMPONENT);

                        } else {
                            dd("shortcut: no escape required");

                            p = ngx_copy(p, key, key_len);
                        }

                    } else {
                        lua_pop(L, 1);
                        continue;
                    }

                } else {

                    if (total_escape) {
                        p = (u_char *)
                                ngx_http_lua_escape_uri(p, key,
                                                        key_len,
                                                        NGX_ESCAPE_URI_COMPONENT
                                                        );

                    } else {
                        dd("shortcut: no escape required");

                        p = ngx_copy(p, key, key_len);
                    }

                    *p++ = '=';

                    value = (u_char *) lua_tolstring(L, -1, &value_len);

                    if (total_escape) {
                        p = (u_char *)
                                ngx_http_lua_escape_uri(p, value,
                                                        value_len,
                                                        NGX_ESCAPE_URI_COMPONENT
                                                        );

                    } else {
                        p = ngx_copy(p, value, value_len);
                    }
                }

                if (i != n - 1) {

                    *p++ = '&';
                }

                i++;
                lua_pop(L, 1);
            }

            break;

        default:
            luaL_error(L, "should not reach here");
            return;
        }

        lua_pop(L, 1);
    }

    if (p - args->data != (ssize_t) len) {
        luaL_error(L, "buffer error: %d != %d",
                   (int) (p - args->data), (int) len);
        return;
    }
}
