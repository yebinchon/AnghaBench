
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 scalar_t__ LUA_TLIGHTUSERDATA ;
 int ROOT_TABLE ;
 int luaL_addchar (int *,char) ;
 int luaL_addstring (int *,int ) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_pushresult (int *) ;
 int lua_getfield (int *,int,char*) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_newtable (int *) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushfstring (int *,char*,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,int ) ;
 int lua_rawseti (int *,int,int) ;
 int lua_setfield (int *,int,char*) ;
 scalar_t__ lua_tointeger (int *,int) ;
 int lua_tonumber (int *,int) ;
 int lua_tostring (int *,int) ;
 int lua_touserdata (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static void make_report(lua_State* L, lua_State* dL) {
 int size = 0;
 int i = 0;
 luaL_Buffer b;

 lua_newtable(L);

 lua_pushnil(dL);
 while (lua_next(dL, ROOT_TABLE) != 0) {
  lua_getfield(dL, -1, "name");
  if (lua_isnil(dL, -1)) {
   lua_pop(dL, 2);
   continue;
  } else {
   lua_pop(dL, 1);
  }

  lua_newtable(L);
  size = 0;

  lua_pushnil(dL);
  while (lua_next(dL, -2) != 0) {
   if (LUA_TLIGHTUSERDATA == lua_type(dL, -2)) {
    size += (int)lua_tointeger(dL, -1);
   }

   lua_pop(dL, 1);
  }
  lua_pushnumber(L, size);
  lua_setfield(L, -2, "size");

  lua_pushfstring(L, "%p", lua_touserdata(dL, -2));
  lua_setfield(L, -2, "pointer");

  lua_getfield(dL, -1, "name");
  lua_pushstring(L, lua_tostring(dL, -1));
  lua_pop(dL, 1);
  lua_setfield(L, -2, "name");

  lua_getfield(dL, -1, "type");
  lua_pushnumber(L, lua_tonumber(dL, -1));
  lua_pop(dL, 1);
  lua_setfield(L, -2, "type");

  lua_getfield(dL, -1, "used_in");
  luaL_buffinit(L, &b);
  lua_pushnil(dL);
  while (lua_next(dL, -2) != 0) {
   lua_pop(dL, 1);
   luaL_addstring(&b, lua_tostring(dL, -1));
   luaL_addchar(&b, ';');
  }
  luaL_pushresult(&b);
  lua_pop(dL, 1);
  lua_setfield(L, -2, "used_in");

  ++i;
  lua_rawseti(L, -2, i);

  lua_pop(dL, 1);
 }
}
