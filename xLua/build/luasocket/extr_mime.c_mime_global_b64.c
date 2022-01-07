
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;
typedef int UC ;


 size_t b64encode (int ,int *,size_t,int *) ;
 size_t b64pad (int *,size_t,int *) ;
 int luaL_buffinit (int *,int *) ;
 scalar_t__ luaL_optlstring (int *,int,int *,size_t*) ;
 int luaL_pushresult (int *) ;
 int lua_pushlstring (int *,char*,size_t) ;
 int lua_pushnil (int *) ;
 int lua_settop (int *,int) ;
 int lua_tolstring (int *,int,size_t*) ;

__attribute__((used)) static int mime_global_b64(lua_State *L)
{
    UC atom[3];
    size_t isize = 0, asize = 0;
    const UC *input = (UC *) luaL_optlstring(L, 1, ((void*)0), &isize);
    const UC *last = input + isize;
    luaL_Buffer buffer;

    if (!input) {
        lua_pushnil(L);
        lua_pushnil(L);
        return 2;
    }

    lua_settop(L, 2);

    luaL_buffinit(L, &buffer);
    while (input < last)
        asize = b64encode(*input++, atom, asize, &buffer);
    input = (UC *) luaL_optlstring(L, 2, ((void*)0), &isize);

    if (!input) {
        size_t osize = 0;
        asize = b64pad(atom, asize, &buffer);
        luaL_pushresult(&buffer);

        lua_tolstring(L, -1, &osize);
        if (osize == 0) lua_pushnil(L);
        lua_pushnil(L);
        return 2;
    }

    last = input + isize;
    while (input < last)
        asize = b64encode(*input++, atom, asize, &buffer);
    luaL_pushresult(&buffer);
    lua_pushlstring(L, (char *) atom, asize);
    return 2;
}
