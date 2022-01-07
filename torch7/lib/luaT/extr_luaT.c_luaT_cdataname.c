
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int cdataname ;
 scalar_t__ luaL_dostring (int *,int ) ;
 int luaL_error (int *,char*,...) ;
 int lua_isfunction (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 scalar_t__ lua_pcall (int *,int,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawget (int *,int ) ;
 int lua_rawset (int *,int ) ;
 char* lua_tostring (int *,int) ;

__attribute__((used)) static const char* luaT_cdataname(lua_State *L, int ud, const char *tname)
{
  lua_pushstring(L, "__cdataname");
  lua_rawget(L, LUA_REGISTRYINDEX);
  if(lua_isnil(L,-1))
  {
    lua_pop(L, 1);

    if(luaL_dostring(L, cdataname))
      luaL_error(L, "internal error (could not load cdataname): %s", lua_tostring(L, -1));

    lua_pushstring(L, "__cdataname");
    lua_pushvalue(L, -2);
    lua_rawset(L, LUA_REGISTRYINDEX);
  }
  if(!lua_isfunction(L, -1))
    luaL_error(L, "internal error (cdataname is not a function)");

  lua_pushvalue(L, ud);
  if(tname)
    lua_pushstring(L, tname);
  if(lua_pcall(L, (tname ? 2 : 1), 1, 0))
    luaL_error(L, "internal error (cdataname): %s", lua_tostring(L, -1));

  tname = lua_tostring(L, -1);
  lua_pop(L, 1);

  return tname;
}
