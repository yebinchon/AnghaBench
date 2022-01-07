
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_argerror (int *,int,char*) ;
 char* luaL_checkstring (int *,int) ;
 scalar_t__ luaT_iscdata (int *,int) ;
 int luaT_pushudata (int *,void*,char const*) ;
 scalar_t__ lua_isnumber (int *,int) ;
 scalar_t__ lua_tonumber (int *,int) ;
 scalar_t__ lua_topointer (int *,int) ;
 int lua_type (int *,int) ;

int luaT_lua_pushudata(lua_State *L)
{
  void *udata = ((void*)0);
  const char *tname = luaL_checkstring(L, 2);

  if(lua_type(L, 1) == 10)
    udata = *((void**)lua_topointer(L, 1));
  else if(luaT_iscdata(L, 1))
    udata = ((void**)lua_topointer(L, 1))[4];
  else if(lua_isnumber(L, 1))
    udata = (void*)(uintptr_t)lua_tonumber(L, 1);
  else
    luaL_argerror(L, 1, "expecting number or cdata");

  luaT_pushudata(L, udata, tname);

  return 1;
}
