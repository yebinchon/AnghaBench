
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 scalar_t__ loadjitmodule (int *) ;
 int lua_getfield (int *,int,char*) ;
 int lua_gettable (int *,int) ;
 int lua_isfunction (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int lua_pushvalue (int *,int) ;
 int lua_remove (int *,int) ;
 int runcmdopt (int *,char const*) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int dojitcmd(lua_State *L, const char *cmd)
{
  const char *opt = strchr(cmd, '=');
  lua_pushlstring(L, cmd, opt ? (size_t)(opt - cmd) : strlen(cmd));
  lua_getfield(L, LUA_REGISTRYINDEX, "_LOADED");
  lua_getfield(L, -1, "jit");
  lua_remove(L, -2);
  lua_pushvalue(L, -2);
  lua_gettable(L, -2);
  if (!lua_isfunction(L, -1)) {
    lua_pop(L, 2);
    if (loadjitmodule(L))
      return 1;
  } else {
    lua_remove(L, -2);
  }
  lua_remove(L, -2);
  return runcmdopt(L, opt ? opt+1 : opt);
}
