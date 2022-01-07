
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MASKCALL ;
 int LUA_MASKRET ;
 int LUA_REGISTRYINDEX ;
 int LUA_TFUNCTION ;
 int hook ;
 int hook_index ;
 int luaL_checktype (int *,int,int ) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 int lua_pushlightuserdata (int *,int *) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawset (int *,int ) ;
 int lua_sethook (int *,int ,int,int ) ;

__attribute__((used)) static int profiler_set_hook(lua_State *L) {
 if (lua_isnoneornil(L, 1)) {
  lua_pushlightuserdata(L, &hook_index);
  lua_pushnil(L);
  lua_rawset(L, LUA_REGISTRYINDEX);

  lua_sethook(L, 0, 0, 0);
 } else {
  luaL_checktype(L, 1, LUA_TFUNCTION);
  lua_pushlightuserdata(L, &hook_index);
  lua_pushvalue(L, 1);
  lua_rawset(L, LUA_REGISTRYINDEX);
  lua_sethook(L, hook, LUA_MASKCALL | LUA_MASKRET, 0);
 }
 return 0;
}
