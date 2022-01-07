
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int lua_State ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_toboolean (int *,int) ;
 scalar_t__ lua_tolstring (int *,int,size_t*) ;
 double lua_tonumber (int *,int) ;
 int lua_type (int *,int) ;
 int * ngx_copy (int *,int *,size_t) ;

u_char *
ngx_http_lua_copy_str_in_table(lua_State *L, int index, u_char *dst)
{
    double key;
    int max;
    int i;
    int type;
    size_t len;
    u_char *p;

    if (index < 0) {
        index = lua_gettop(L) + index + 1;
    }

    max = 0;

    lua_pushnil(L);
    while (lua_next(L, index) != 0) {
        key = lua_tonumber(L, -2);
        if (key > max) {
            max = (int) key;
        }

        lua_pop(L, 1);
    }

    for (i = 1; i <= max; i++) {
        lua_rawgeti(L, index, i);
        type = lua_type(L, -1);
        switch (type) {
            case 130:
            case 129:
                p = (u_char *) lua_tolstring(L, -1, &len);
                dst = ngx_copy(dst, p, len);
                break;

            case 131:
                *dst++ = 'n';
                *dst++ = 'i';
                *dst++ = 'l';
                break;

            case 133:
                if (lua_toboolean(L, -1)) {
                    *dst++ = 't';
                    *dst++ = 'r';
                    *dst++ = 'u';
                    *dst++ = 'e';

                } else {
                    *dst++ = 'f';
                    *dst++ = 'a';
                    *dst++ = 'l';
                    *dst++ = 's';
                    *dst++ = 'e';
                }

                break;

            case 128:
                dst = ngx_http_lua_copy_str_in_table(L, -1, dst);
                break;

            case 132:

                *dst++ = 'n';
                *dst++ = 'u';
                *dst++ = 'l';
                *dst++ = 'l';
                break;

            default:
                luaL_error(L, "impossible to reach here");
                return ((void*)0);
        }

        lua_pop(L, 1);
    }

    return dst;
}
