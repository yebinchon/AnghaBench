
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
 int dd (char*,int) ;
 double floor (double) ;
 size_t luaL_argerror (int *,int,char const*) ;
 int luaL_typename (int *,int) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 char* lua_pushfstring (int *,char*,int ) ;
 int lua_pushnil (int *) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_toboolean (int *,int) ;
 int lua_tolstring (int *,int,size_t*) ;
 double lua_tonumber (int *,int) ;
 int * lua_touserdata (int *,int) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int) ;

size_t
ngx_http_lua_calc_strlen_in_table(lua_State *L, int index, int arg_i,
    unsigned strict)
{
    double key;
    int max;
    int i;
    int type;
    size_t size;
    size_t len;
    const char *msg;

    if (index < 0) {
        index = lua_gettop(L) + index + 1;
    }

    dd("table index: %d", index);

    max = 0;

    lua_pushnil(L);
    while (lua_next(L, index) != 0) {
        dd("key type: %s", luaL_typename(L, -2));

        if (lua_type(L, -2) == 130) {

            key = lua_tonumber(L, -2);

            dd("key value: %d", (int) key);

            if (floor(key) == key && key >= 1) {
                if (key > max) {
                    max = (int) key;
                }

                lua_pop(L, 1);
                continue;
            }
        }


        lua_pop(L, 2);

        luaL_argerror(L, arg_i, "non-array table found");
        return 0;
    }

    size = 0;

    for (i = 1; i <= max; i++) {
        lua_rawgeti(L, index, i);
        type = lua_type(L, -1);

        switch (type) {
            case 130:
            case 129:

                lua_tolstring(L, -1, &len);
                size += len;
                break;

            case 131:

                if (strict) {
                    goto bad_type;
                }

                size += sizeof("nil") - 1;
                break;

            case 133:

                if (strict) {
                    goto bad_type;
                }

                if (lua_toboolean(L, -1)) {
                    size += sizeof("true") - 1;

                } else {
                    size += sizeof("false") - 1;
                }

                break;

            case 128:

                size += ngx_http_lua_calc_strlen_in_table(L, -1, arg_i, strict);
                break;

            case 132:

                if (strict) {
                    goto bad_type;
                }

                if (lua_touserdata(L, -1) == ((void*)0)) {
                    size += sizeof("null") - 1;
                    break;
                }

                continue;

            default:

bad_type:

                msg = lua_pushfstring(L, "bad data type %s found",
                                      lua_typename(L, type));
                return luaL_argerror(L, arg_i, msg);
        }

        lua_pop(L, 1);
    }

    return size;
}
