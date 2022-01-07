
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct luaL_Reg {int dummy; } ;
typedef int lua_State ;


 int luaT_registeratname (int *,struct luaL_Reg const*,char const*) ;

void luaT_registeratid(lua_State *L, const struct luaL_Reg *methods, const char *id)
{
  luaT_registeratname(L, methods, id);
}
