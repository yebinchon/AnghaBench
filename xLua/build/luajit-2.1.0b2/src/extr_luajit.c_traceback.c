
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_callmeta (int *,int,char*) ;
 int luaL_traceback (int *,int *,int ,int) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 int lua_isstring (int *,int) ;
 int lua_remove (int *,int) ;
 int lua_tostring (int *,int) ;

__attribute__((used)) static int traceback(lua_State *L)
{
  if (!lua_isstring(L, 1)) {
    if (lua_isnoneornil(L, 1) ||
 !luaL_callmeta(L, 1, "__tostring") ||
 !lua_isstring(L, -1))
      return 1;
    lua_remove(L, 1);
  }
  luaL_traceback(L, L, lua_tostring(L, 1), 1);
  return 1;
}
