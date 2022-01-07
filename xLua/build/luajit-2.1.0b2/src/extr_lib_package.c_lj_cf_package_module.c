
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LJ_ERR_BADMODN ;
 int LUA_GLOBALSINDEX ;
 int LUA_REGISTRYINDEX ;
 int dooptions (int *,int) ;
 int lj_err_callerv (int *,int ,char const*) ;
 char* luaL_checkstring (int *,int) ;
 int * luaL_findtable (int *,int ,char const*,int) ;
 int lua_getfield (int *,int,char const*) ;
 int lua_gettop (int *) ;
 int lua_isnil (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,char const*) ;
 int modinit (int *,char const*) ;
 int setfenv (int *) ;

__attribute__((used)) static int lj_cf_package_module(lua_State *L)
{
  const char *modname = luaL_checkstring(L, 1);
  int loaded = lua_gettop(L) + 1;
  lua_getfield(L, LUA_REGISTRYINDEX, "_LOADED");
  lua_getfield(L, loaded, modname);
  if (!lua_istable(L, -1)) {
    lua_pop(L, 1);

    if (luaL_findtable(L, LUA_GLOBALSINDEX, modname, 1) != ((void*)0))
      lj_err_callerv(L, LJ_ERR_BADMODN, modname);
    lua_pushvalue(L, -1);
    lua_setfield(L, loaded, modname);
  }

  lua_getfield(L, -1, "_NAME");
  if (!lua_isnil(L, -1)) {
    lua_pop(L, 1);
  } else {
    lua_pop(L, 1);
    modinit(L, modname);
  }
  lua_pushvalue(L, -1);
  setfenv(L);
  dooptions(L, loaded - 1);
  return 0;
}
