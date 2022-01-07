
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_getmetatable (int *,int) ;

int luaT_getmetaclass(lua_State *L, int index)
{
  return lua_getmetatable(L, index);
}
