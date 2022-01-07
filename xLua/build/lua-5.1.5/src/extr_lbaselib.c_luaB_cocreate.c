
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_argcheck (int *,int,int,char*) ;
 int lua_iscfunction (int *,int) ;
 scalar_t__ lua_isfunction (int *,int) ;
 int * lua_newthread (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_xmove (int *,int *,int) ;

__attribute__((used)) static int luaB_cocreate (lua_State *L) {
  lua_State *NL = lua_newthread(L);
  luaL_argcheck(L, lua_isfunction(L, 1) && !lua_iscfunction(L, 1), 1,
    "Lua function expected");
  lua_pushvalue(L, 1);
  lua_xmove(L, NL, 1);
  return 1;
}
