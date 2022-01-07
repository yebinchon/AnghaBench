
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;







 int luaL_error (int *,char*,int ) ;
 int luaL_typename (int *,int) ;
 int lua_newtable (int *) ;
 int lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushstring (int *,int ) ;
 int lua_settable (int *,int) ;
 int lua_toboolean (int *,int) ;
 int lua_tonumber (int *,int) ;
 int lua_tostring (int *,int) ;
 int lua_type (int *,int) ;

void script_copy_value(lua_State *src, lua_State *dst, int index) {
    switch (lua_type(src, index)) {
        case 132:
            lua_pushboolean(dst, lua_toboolean(src, index));
            break;
        case 131:
            lua_pushnil(dst);
            break;
        case 130:
            lua_pushnumber(dst, lua_tonumber(src, index));
            break;
        case 129:
            lua_pushstring(dst, lua_tostring(src, index));
            break;
        case 128:
            lua_newtable(dst);
            lua_pushnil(src);
            while (lua_next(src, index - 1)) {
                script_copy_value(src, dst, -2);
                script_copy_value(src, dst, -1);
                lua_settable(dst, -3);
                lua_pop(src, 1);
            }
            lua_pop(src, 1);
            break;
        default:
            luaL_error(src, "cannot transfer '%s' to thread", luaL_typename(src, index));
    }
}
