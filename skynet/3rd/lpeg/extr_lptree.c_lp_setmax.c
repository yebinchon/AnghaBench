
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_Integer ;


 int LUA_REGISTRYINDEX ;
 scalar_t__ MAXLIM ;
 int MAXSTACKIDX ;
 int luaL_argcheck (int *,int,int,char*) ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 int lua_setfield (int *,int ,int ) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int lp_setmax (lua_State *L) {
  lua_Integer lim = luaL_checkinteger(L, 1);
  luaL_argcheck(L, 0 < lim && lim <= MAXLIM, 1, "out of range");
  lua_settop(L, 1);
  lua_setfield(L, LUA_REGISTRYINDEX, MAXSTACKIDX);
  return 0;
}
