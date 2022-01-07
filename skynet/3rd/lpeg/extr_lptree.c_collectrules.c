
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MINSTACK ;
 int getfirstrule (int *,int,int) ;
 int getsize (int *,int) ;
 scalar_t__ lp_equal (int *,int,int) ;
 int luaL_checkstack (int *,int ,char*) ;
 int luaL_error (int *,char*,int ) ;
 int lua_gettop (int *) ;
 int lua_newtable (int *) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_settable (int *,int) ;
 int lua_tonumber (int *,int) ;
 int testpattern (int *,int) ;
 int val2str (int *,int) ;

__attribute__((used)) static int collectrules (lua_State *L, int arg, int *totalsize) {
  int n = 1;
  int postab = lua_gettop(L) + 1;
  int size;
  lua_newtable(L);
  getfirstrule(L, arg, postab);
  size = 2 + getsize(L, postab + 2);
  lua_pushnil(L);
  while (lua_next(L, arg) != 0) {
    if (lua_tonumber(L, -2) == 1 ||
        lp_equal(L, -2, postab + 1)) {
      lua_pop(L, 1);
      continue;
    }
    if (!testpattern(L, -1))
      luaL_error(L, "rule '%s' is not a pattern", val2str(L, -2));
    luaL_checkstack(L, LUA_MINSTACK, "grammar has too many rules");
    lua_pushvalue(L, -2);
    lua_pushinteger(L, size);
    lua_settable(L, postab);
    size += 1 + getsize(L, -1);
    lua_pushvalue(L, -2);
    n++;
  }
  *totalsize = size + 1;
  return n;
}
