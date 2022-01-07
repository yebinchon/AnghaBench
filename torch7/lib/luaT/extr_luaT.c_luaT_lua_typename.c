
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkany (int *,int) ;
 char* luaT_typename (int *,int) ;
 int lua_pushstring (int *,char const*) ;

int luaT_lua_typename(lua_State *L)
{
  const char* tname = ((void*)0);
  luaL_checkany(L, 1);
  if((tname = luaT_typename(L, 1)))
  {
    lua_pushstring(L, tname);
    return 1;
  }
  return 0;
}
