
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_argerror (int *,int,char const*) ;
 char* luaT_typename (int *,int) ;
 char* lua_pushfstring (int *,char*,char const*,char const*) ;
 char* lua_typename (int *,int) ;

int luaT_typerror(lua_State *L, int ud, const char *tname)
{
  const char *msg;
  const char *tnameud = luaT_typename(L, ud);

  if(!tnameud)
    tnameud = lua_typename(L, ud);

  msg = lua_pushfstring(L, "%s expected, got %s",
                        tname,
                        (tnameud ? tnameud : "unknown object"));

  return luaL_argerror(L, ud, msg);
}
