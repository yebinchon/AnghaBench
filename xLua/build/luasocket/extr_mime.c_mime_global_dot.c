
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
typedef int luaL_Buffer ;


 size_t dot (int ,size_t,int *) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_checknumber (int *,int) ;
 char* luaL_optlstring (int *,int,int *,size_t*) ;
 int luaL_pushresult (int *) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int) ;

__attribute__((used)) static int mime_global_dot(lua_State *L)
{
    size_t isize = 0, state = (size_t) luaL_checknumber(L, 1);
    const char *input = luaL_optlstring(L, 2, ((void*)0), &isize);
    const char *last = input + isize;
    luaL_Buffer buffer;

    if (!input) {
        lua_pushnil(L);
        lua_pushnumber(L, 2);
        return 2;
    }

    luaL_buffinit(L, &buffer);
    while (input < last)
        state = dot(*input++, state, &buffer);
    luaL_pushresult(&buffer);
    lua_pushnumber(L, (lua_Number) state);
    return 2;
}
