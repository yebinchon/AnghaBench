
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_insert (int *,int) ;
 int lua_newtable (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_settable (int *,int) ;

__attribute__((used)) static void wrap(lua_State *L) {
    lua_newtable(L);
    lua_pushnumber(L, 1);
    lua_pushvalue(L, -3);
    lua_settable(L, -3);
    lua_insert(L, -2);
    lua_pop(L, 1);
}
