
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ptrdiff_t ;
typedef int lua_State ;
typedef int lua_Number ;
typedef int lua_Integer ;


 int lua_pushinteger (int *,scalar_t__) ;
 int lua_pushnumber (int *,int ) ;

void luaT_pushinteger(lua_State *L, ptrdiff_t n)
{
  lua_pushnumber(L, (lua_Number)n);

}
