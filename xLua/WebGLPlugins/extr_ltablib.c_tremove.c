
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int TAB_RW ;
 int aux_getn (int *,int,int ) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_optinteger (int *,int,int) ;
 int lua_geti (int *,int,int) ;
 int lua_pushnil (int *) ;
 int lua_seti (int *,int,int) ;

__attribute__((used)) static int tremove (lua_State *L) {
  lua_Integer size = aux_getn(L, 1, TAB_RW);
  lua_Integer pos = luaL_optinteger(L, 2, size);
  if (pos != size)
    luaL_argcheck(L, 1 <= pos && pos <= size + 1, 1, "position out of bounds");
  lua_geti(L, 1, pos);
  for ( ; pos < size; pos++) {
    lua_geti(L, 1, pos + 1);
    lua_seti(L, 1, pos);
  }
  lua_pushnil(L);
  lua_seti(L, 1, pos);
  return 1;
}
