
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_OK ;
 int docall (int *,int,int ) ;
 int luaL_loadfile (int *,char const*) ;
 int lua_getglobal (int *,char*) ;
 int lua_isnil (int *,int) ;
 scalar_t__ lua_istable (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_remove (int *,int) ;
 int report (int *,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int handle_script(lua_State *L, char **argx)
{
  int status;
  const char *fname = argx[0];
  if (strcmp(fname, "-") == 0 && strcmp(argx[-1], "--") != 0)
    fname = ((void*)0);
  status = luaL_loadfile(L, fname);
  if (status == LUA_OK) {

    int narg = 0;
    lua_getglobal(L, "arg");
    if (lua_istable(L, -1)) {
      do {
 narg++;
 lua_rawgeti(L, -narg, narg);
      } while (!lua_isnil(L, -1));
      lua_pop(L, 1);
      lua_remove(L, -narg);
      narg--;
    } else {
      lua_pop(L, 1);
    }
    status = docall(L, narg, 0);
  }
  return report(L, status);
}
