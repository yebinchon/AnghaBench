
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int CLIBS ;
 int LUA_REGISTRYINDEX ;
 int lua_getfield (int *,int,char const*) ;
 int lua_pop (int *,int) ;
 int lua_rawgetp (int *,int ,int *) ;
 void* lua_touserdata (int *,int) ;

__attribute__((used)) static void *checkclib (lua_State *L, const char *path) {
  void *plib;
  lua_rawgetp(L, LUA_REGISTRYINDEX, &CLIBS);
  lua_getfield(L, -1, path);
  plib = lua_touserdata(L, -1);
  lua_pop(L, 2);
  return plib;
}
