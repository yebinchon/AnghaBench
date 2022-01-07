
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;




 int LUA_GCCOUNTB ;






 size_t luaL_checkoption (int *,int,char*,char const* const*) ;
 scalar_t__ luaL_optinteger (int *,int,int ) ;
 int lua_gc (int *,int,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnumber (int *,int) ;

__attribute__((used)) static int luaB_collectgarbage (lua_State *L) {
  static const char *const opts[] = {"stop", "restart", "collect",
    "count", "step", "setpause", "setstepmul",
    "isrunning", ((void*)0)};
  static const int optsnum[] = {128, 132, 135,
    134, 129, 131, 130,
    133};
  int o = optsnum[luaL_checkoption(L, 1, "collect", opts)];
  int ex = (int)luaL_optinteger(L, 2, 0);
  int res = lua_gc(L, o, ex);
  switch (o) {
    case 134: {
      int b = lua_gc(L, LUA_GCCOUNTB, 0);
      lua_pushnumber(L, (lua_Number)res + ((lua_Number)b/1024));
      return 1;
    }
    case 129: case 133: {
      lua_pushboolean(L, res);
      return 1;
    }
    default: {
      lua_pushinteger(L, res);
      return 1;
    }
  }
}
