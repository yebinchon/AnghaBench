
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_CFunction ;


 scalar_t__ luaT_lua_newmetatable ;
 char const* luaT_typenameid (int *,char const*) ;
 int lua_call (int *,int,int) ;
 void lua_pushcfunction (int *,scalar_t__) ;
 void lua_pushnil (int *) ;
 scalar_t__ lua_pushstring (int *,char const*) ;
 void lua_pushvalue (int *,int) ;

const char* luaT_newlocalmetatable(lua_State *L, const char *tname, const char *parent_tname,
                                   lua_CFunction constructor, lua_CFunction destructor, lua_CFunction factory, int moduleidx)
{
  lua_pushcfunction(L, luaT_lua_newmetatable);
  lua_pushstring(L, tname);
  (parent_tname ? (void)lua_pushstring(L, parent_tname) : lua_pushnil(L));
  (constructor ? lua_pushcfunction(L, constructor) : lua_pushnil(L));
  (destructor ? lua_pushcfunction(L, destructor) : lua_pushnil(L));
  (factory ? lua_pushcfunction(L, factory) : lua_pushnil(L));
  (moduleidx > 0 ? lua_pushvalue(L, moduleidx) : lua_pushnil(L));
  lua_call(L, 6, 1);
  return luaT_typenameid(L, tname);
}
