
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_GLOBALSINDEX ;
 int getfunc (int *,int) ;
 int lua_getfenv (int *,int) ;
 scalar_t__ lua_iscfunction (int *,int) ;
 int lua_pushvalue (int *,int ) ;

__attribute__((used)) static int luaB_getfenv (lua_State *L) {
  getfunc(L, 1);
  if (lua_iscfunction(L, -1))
    lua_pushvalue(L, LUA_GLOBALSINDEX);
  else
    lua_getfenv(L, -1);
  return 1;
}
