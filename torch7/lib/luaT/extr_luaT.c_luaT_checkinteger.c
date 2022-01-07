
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int lua_State ;
typedef int lua_Number ;
typedef int lua_Integer ;


 int luaL_checkinteger (int *,int) ;
 int luaL_checknumber (int *,int) ;

ptrdiff_t luaT_checkinteger(lua_State *L, int idx)
{







  return (ptrdiff_t)luaL_checknumber(L, idx);

}
