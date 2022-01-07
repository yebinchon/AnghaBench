
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaT_pushmetatable (int *,char const*) ;

int luaT_pushmetaclass(lua_State *L, const char *tname)
{
  return luaT_pushmetatable(L, tname);
}
