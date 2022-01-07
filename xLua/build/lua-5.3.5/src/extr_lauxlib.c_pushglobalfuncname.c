
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Debug ;


 int LUA_LOADED_TABLE ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ findfield (int *,int,int) ;
 int lua_copy (int *,int,int) ;
 int lua_getfield (int *,int ,int ) ;
 int lua_getinfo (int *,char*,int *) ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int lua_remove (int *,int) ;
 int lua_settop (int *,int) ;
 char* lua_tostring (int *,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int pushglobalfuncname (lua_State *L, lua_Debug *ar) {
  int top = lua_gettop(L);
  lua_getinfo(L, "f", ar);
  lua_getfield(L, LUA_REGISTRYINDEX, LUA_LOADED_TABLE);
  if (findfield(L, top + 1, 2)) {
    const char *name = lua_tostring(L, -1);
    if (strncmp(name, "_G.", 3) == 0) {
      lua_pushstring(L, name + 3);
      lua_remove(L, -2);
    }
    lua_copy(L, -1, top + 1);
    lua_pop(L, 2);
    return 1;
  }
  else {
    lua_settop(L, top);
    return 0;
  }
}
