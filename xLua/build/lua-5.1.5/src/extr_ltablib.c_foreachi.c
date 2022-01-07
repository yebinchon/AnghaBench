
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TFUNCTION ;
 int aux_getn (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 int lua_call (int *,int,int) ;
 int lua_isnil (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawgeti (int *,int,int) ;

__attribute__((used)) static int foreachi (lua_State *L) {
  int i;
  int n = aux_getn(L, 1);
  luaL_checktype(L, 2, LUA_TFUNCTION);
  for (i=1; i <= n; i++) {
    lua_pushvalue(L, 2);
    lua_pushinteger(L, i);
    lua_rawgeti(L, 1, i);
    lua_call(L, 2, 1);
    if (!lua_isnil(L, -1))
      return 1;
    lua_pop(L, 1);
  }
  return 0;
}
