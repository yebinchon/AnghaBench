
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 void* luaT_toudata (int *,int,char const*) ;
 int luaT_typerror (int *,int,char const*) ;

void *luaT_checkudata(lua_State *L, int ud, const char *tname)
{
  void *p = luaT_toudata(L, ud, tname);
  if(!p)
    luaT_typerror(L, ud, tname);
  return p;
}
