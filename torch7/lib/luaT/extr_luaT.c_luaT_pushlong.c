
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
typedef int lua_Integer ;


 int lua_pushinteger (int *,long) ;
 int lua_pushnumber (int *,int ) ;

void luaT_pushlong(lua_State *L, long n)
{
  lua_pushnumber(L, (lua_Number)n);

}
