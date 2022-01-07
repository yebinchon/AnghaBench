
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char const* luaT_typename (int *,int) ;

const char* luaT_id(lua_State *L, int ud)
{
  return luaT_typename(L, ud);
}
