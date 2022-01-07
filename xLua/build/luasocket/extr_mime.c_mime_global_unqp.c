
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;
typedef int UC ;


 int luaL_buffinit (int *,int *) ;
 scalar_t__ luaL_optlstring (int *,int,int *,size_t*) ;
 int luaL_pushresult (int *) ;
 int lua_pushlstring (int *,char*,size_t) ;
 int lua_pushnil (int *) ;
 int lua_settop (int *,int) ;
 int * lua_tostring (int *,int) ;
 size_t qpdecode (int ,int *,size_t,int *) ;

__attribute__((used)) static int mime_global_unqp(lua_State *L)
{
    size_t asize = 0, isize = 0;
    UC atom[3];
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
        asize = qpdecode(*input++, atom, asize, &buffer);
    input = (UC *) luaL_optlstring(L, 2, ((void*)0), &isize);

    if (!input) {
        luaL_pushresult(&buffer);
        if (!(*lua_tostring(L, -1))) lua_pushnil(L);
        lua_pushnil(L);
        return 2;
    }

    last = input + isize;
    while (input < last)
        asize = qpdecode(*input++, atom, asize, &buffer);
    luaL_pushresult(&buffer);
    lua_pushlstring(L, (char *) atom, asize);
    return 2;
}
