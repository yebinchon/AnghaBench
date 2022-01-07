
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lua_Unsigned ;
typedef int lua_State ;
typedef scalar_t__ lua_Integer ;


 scalar_t__ INT_MAX ;
 int luaL_checkinteger ;
 int luaL_error (int *,char*) ;
 int luaL_len (int *,int) ;
 scalar_t__ luaL_opt (int *,int ,int,int ) ;
 scalar_t__ luaL_optinteger (int *,int,int) ;
 int lua_checkstack (int *,int) ;
 int lua_geti (int *,int,scalar_t__) ;

__attribute__((used)) static int unpack (lua_State *L) {
  lua_Unsigned n;
  lua_Integer i = luaL_optinteger(L, 2, 1);
  lua_Integer e = luaL_opt(L, luaL_checkinteger, 3, luaL_len(L, 1));
  if (i > e) return 0;
  n = (lua_Unsigned)e - i;
  if (n >= (unsigned int)INT_MAX || !lua_checkstack(L, (int)(++n)))
    return luaL_error(L, "too many results to unpack");
  for (; i < e; i++) {
    lua_geti(L, 1, i);
  }
  lua_geti(L, 1, e);
  return (int)n;
}
