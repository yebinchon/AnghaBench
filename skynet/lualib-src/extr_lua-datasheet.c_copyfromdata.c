
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proxy {int dummy; } ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TUSERDATA ;
 int PROXYCACHE ;
 int copytable (int *,int,struct proxy*) ;
 int luaL_error (int *,char*,int ) ;
 int lua_getfield (int *,int ,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_rawget (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int lua_topointer (int *,int) ;
 struct proxy* lua_touserdata (int *,int) ;

__attribute__((used)) static void
copyfromdata(lua_State *L) {
 lua_getfield(L, LUA_REGISTRYINDEX, PROXYCACHE);
 lua_pushvalue(L, 1);

 if (lua_rawget(L, -2) != LUA_TUSERDATA) {
  luaL_error(L, "Invalid proxy table %p", lua_topointer(L, 1));
 }
 struct proxy * p = lua_touserdata(L, -1);
 lua_pop(L, 2);
 copytable(L, 1, p);
 lua_pushnil(L);
 lua_setmetatable(L, 1);
}
