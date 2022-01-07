
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int func ;
 int luaL_openlib (int *,int *,int ,int ) ;
 int luaL_setfuncs (int *,int ,int ) ;

int timeout_open(lua_State *L) {



    luaL_openlib(L, ((void*)0), func, 0);

    return 0;
}
