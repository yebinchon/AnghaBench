
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ luaT_toudata (int *,int,char const*) ;

int luaT_isudata(lua_State *L, int ud, const char *tname)
{
  if(luaT_toudata(L, ud, tname))
    return 1;
  else
    return 0;
}
