
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 scalar_t__ LUA_TNIL ;
 scalar_t__ LUA_TTABLE ;
 int luaL_addvalue (int *) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_error (int *,char*,...) ;
 int luaL_pushresult (int *) ;
 int lua_call (int *,int,int) ;
 scalar_t__ lua_getfield (int *,int ,char*) ;
 scalar_t__ lua_isfunction (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 scalar_t__ lua_rawgeti (int *,int,int) ;
 int lua_tostring (int *,int) ;
 int lua_upvalueindex (int) ;

__attribute__((used)) static void findloader (lua_State *L, const char *name) {
  int i;
  luaL_Buffer msg;
  luaL_buffinit(L, &msg);

  if (lua_getfield(L, lua_upvalueindex(1), "searchers") != LUA_TTABLE)
    luaL_error(L, "'package.searchers' must be a table");

  for (i = 1; ; i++) {
    if (lua_rawgeti(L, 3, i) == LUA_TNIL) {
      lua_pop(L, 1);
      luaL_pushresult(&msg);
      luaL_error(L, "module '%s' not found:%s", name, lua_tostring(L, -1));
    }
    lua_pushstring(L, name);
    lua_call(L, 1, 2);
    if (lua_isfunction(L, -2))
      return;
    else if (lua_isstring(L, -2)) {
      lua_pop(L, 1);
      luaL_addvalue(&msg);
    }
    else
      lua_pop(L, 2);
  }
}
