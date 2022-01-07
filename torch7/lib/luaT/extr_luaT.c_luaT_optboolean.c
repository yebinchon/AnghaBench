
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaT_checkboolean (int *,int) ;
 scalar_t__ lua_isnoneornil (int *,int) ;

int luaT_optboolean(lua_State *L, int ud, int def)
{
  if(lua_isnoneornil(L,ud))
    return def;

  return luaT_checkboolean(L, ud);
}
