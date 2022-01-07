
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int LUA_TNIL ;
 int L_MAXDATEFIELD ;
 int luaL_error (int *,char*,char const*) ;
 int lua_getfield (int *,int,char const*) ;
 int lua_pop (int *,int) ;
 int lua_tointegerx (int *,int,int*) ;

__attribute__((used)) static int getfield (lua_State *L, const char *key, int d, int delta) {
  int isnum;
  int t = lua_getfield(L, -1, key);
  lua_Integer res = lua_tointegerx(L, -1, &isnum);
  if (!isnum) {
    if (t != LUA_TNIL)
      return luaL_error(L, "field '%s' is not an integer", key);
    else if (d < 0)
      return luaL_error(L, "field '%s' missing in date table", key);
    res = d;
  }
  else {
    if (!(-L_MAXDATEFIELD <= res && res <= L_MAXDATEFIELD))
      return luaL_error(L, "field '%s' is out-of-bound", key);
    res -= delta;
  }
  lua_pop(L, 1);
  return (int)res;
}
