
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TTABLE ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawset (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static void
clear_table(lua_State *L) {
 int t = lua_gettop(L);
 if (lua_type(L, t) != LUA_TTABLE) {
  luaL_error(L, "Invalid cache");
 }
 lua_pushnil(L);
 while (lua_next(L, t) != 0) {

  lua_pop(L, 1);
  lua_pushvalue(L, -1);
  lua_pushnil(L);

  lua_rawset(L, t);

 }
}
