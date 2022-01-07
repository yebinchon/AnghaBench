
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int l_message (int ,char*) ;
 int lua_concat (int *,int) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 scalar_t__ lua_isnil (int *,int) ;
 scalar_t__ lua_pcall (int *,int,int,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushvalue (int *,int) ;
 int lua_remove (int *,int) ;
 char* lua_tostring (int *,int) ;
 int progname ;
 int report (int *,int) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int loadjitmodule(lua_State *L)
{
  lua_getglobal(L, "require");
  lua_pushliteral(L, "jit.");
  lua_pushvalue(L, -3);
  lua_concat(L, 2);
  if (lua_pcall(L, 1, 1, 0)) {
    const char *msg = lua_tostring(L, -1);
    if (msg && !strncmp(msg, "module ", 7))
      goto nomodule;
    return report(L, 1);
  }
  lua_getfield(L, -1, "start");
  if (lua_isnil(L, -1)) {
  nomodule:
    l_message(progname,
       "unknown luaJIT command or jit.* modules not installed");
    return 1;
  }
  lua_remove(L, -2);
  return 0;
}
