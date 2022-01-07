
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int INT_MAX ;
 int LUA_TTABLE ;
 int luaL_checkint ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 int luaL_len (int *,int) ;
 int luaL_opt (int *,int ,int,int ) ;
 int luaL_optint (int *,int,int) ;
 int lua_checkstack (int *,unsigned int) ;
 int lua_rawgeti (int *,int,int) ;

__attribute__((used)) static int unpack (lua_State *L) {
  int i, e;
  unsigned int n;
  luaL_checktype(L, 1, LUA_TTABLE);
  i = luaL_optint(L, 2, 1);
  e = luaL_opt(L, luaL_checkint, 3, luaL_len(L, 1));
  if (i > e) return 0;
  n = (unsigned int)e - (unsigned int)i;
  if (n > (INT_MAX - 10) || !lua_checkstack(L, ++n))
    return luaL_error(L, "too many results to unpack");
  lua_rawgeti(L, 1, i);
  while (i++ < e)
    lua_rawgeti(L, 1, i);
  return n;
}
