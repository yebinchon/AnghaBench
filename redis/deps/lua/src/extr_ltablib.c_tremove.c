
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int aux_getn (int *,int) ;
 int luaL_optint (int *,int,int) ;
 int luaL_setn (int *,int,int) ;
 int lua_pushnil (int *) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_rawseti (int *,int,int) ;

__attribute__((used)) static int tremove (lua_State *L) {
  int e = aux_getn(L, 1);
  int pos = luaL_optint(L, 2, e);
  if (!(1 <= pos && pos <= e))
   return 0;
  luaL_setn(L, 1, e - 1);
  lua_rawgeti(L, 1, pos);
  for ( ;pos<e; pos++) {
    lua_rawgeti(L, 1, pos+1);
    lua_rawseti(L, 1, pos);
  }
  lua_pushnil(L);
  lua_rawseti(L, 1, e);
  return 1;
}
