
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int aux_getn (int *,int) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_optint (int *,int,int) ;
 int lua_pushnil (int *) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_rawseti (int *,int,int) ;

__attribute__((used)) static int tremove (lua_State *L) {
  int size = aux_getn(L, 1);
  int pos = luaL_optint(L, 2, size);
  if (pos != size)
    luaL_argcheck(L, 1 <= pos && pos <= size + 1, 1, "position out of bounds");
  lua_rawgeti(L, 1, pos);
  for ( ; pos < size; pos++) {
    lua_rawgeti(L, 1, pos+1);
    lua_rawseti(L, 1, pos);
  }
  lua_pushnil(L);
  lua_rawseti(L, 1, pos);
  return 1;
}
