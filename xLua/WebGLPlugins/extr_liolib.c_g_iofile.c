
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int lua_getfield (int *,int ,char const*) ;
 int lua_isnoneornil (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int ,char const*) ;
 char* lua_tostring (int *,int) ;
 int opencheck (int *,char const*,char const*) ;
 int tofile (int *) ;

__attribute__((used)) static int g_iofile (lua_State *L, const char *f, const char *mode) {
  if (!lua_isnoneornil(L, 1)) {
    const char *filename = lua_tostring(L, 1);
    if (filename)
      opencheck(L, filename, mode);
    else {
      tofile(L);
      lua_pushvalue(L, 1);
    }
    lua_setfield(L, LUA_REGISTRYINDEX, f);
  }

  lua_getfield(L, LUA_REGISTRYINDEX, f);
  return 1;
}
