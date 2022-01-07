
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TFUNCTION ;
 int aux_getn (int *,int) ;
 int auxsort (int *,int,int) ;
 int luaL_checkstack (int *,int,char*) ;
 int luaL_checktype (int *,int,int ) ;
 int lua_isnoneornil (int *,int) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int sort (lua_State *L) {
  int n = aux_getn(L, 1);
  luaL_checkstack(L, 40, "");
  if (!lua_isnoneornil(L, 2))
    luaL_checktype(L, 2, LUA_TFUNCTION);
  lua_settop(L, 2);
  auxsort(L, 1, n);
  return 0;
}
