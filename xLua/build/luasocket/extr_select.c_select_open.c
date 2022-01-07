
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int FD_SETSIZE ;
 int func ;
 int luaL_openlib (int *,int *,int ,int ) ;
 int luaL_setfuncs (int *,int ,int ) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawset (int *,int) ;

int select_open(lua_State *L) {
    lua_pushstring(L, "_SETSIZE");
    lua_pushnumber(L, FD_SETSIZE);
    lua_rawset(L, -3);



    luaL_openlib(L, ((void*)0), func, 0);

    return 0;
}
