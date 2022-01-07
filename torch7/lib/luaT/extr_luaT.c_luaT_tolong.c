
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
typedef int lua_Integer ;


 scalar_t__ lua_tointeger (int *,int) ;
 scalar_t__ lua_tonumber (int *,int) ;

long luaT_tolong(lua_State *L, int idx)
{







  return (long)lua_tonumber(L, idx);

}
