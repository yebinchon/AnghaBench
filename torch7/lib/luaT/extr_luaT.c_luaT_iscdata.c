
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int CDATA_MT_KEY ;
 int LUA_REGISTRYINDEX ;
 int LUA_TUSERDATA ;
 int cdatamt ;
 scalar_t__ luaL_dostring (int *,int ) ;
 int luaL_error (int *,char*,int ) ;
 int lua_getmetatable (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushlightuserdata (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawequal (int *,int,int) ;
 int lua_rawget (int *,int ) ;
 int lua_rawset (int *,int ) ;
 int lua_tostring (int *,int) ;
 int lua_type (int *,int) ;

__attribute__((used)) static int luaT_iscdata(lua_State *L, int ud)
{
  int type = lua_type(L, ud);
  if(type == 10)
    return 1;
  if(type != LUA_TUSERDATA)
    return 0;
  if(!lua_getmetatable(L, ud))
    return 0;

  lua_pushlightuserdata(L, CDATA_MT_KEY);
  lua_rawget(L, LUA_REGISTRYINDEX);
  if (lua_isnil(L, -1))
  {

    lua_pop(L, 1);
    if(luaL_dostring(L, cdatamt))
      luaL_error(L, "internal error (could not load cdata mt): %s", lua_tostring(L, -1));

    lua_pushlightuserdata(L, CDATA_MT_KEY);
    lua_pushvalue(L, -2);
    lua_rawset(L, LUA_REGISTRYINDEX);
  }

  int iscdata = lua_rawequal(L, -1, -2);
  lua_pop(L, 2);
  return iscdata;
}
