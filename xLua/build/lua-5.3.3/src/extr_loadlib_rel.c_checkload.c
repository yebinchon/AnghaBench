
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,int ,char const*,int ) ;
 int lua_pushstring (int *,char const*) ;
 int lua_tostring (int *,int) ;

__attribute__((used)) static int checkload (lua_State *L, int stat, const char *filename) {
  if (stat) {
    lua_pushstring(L, filename);
    return 2;
  }
  else
    return luaL_error(L, "error loading module '%s' from file '%s':\n\t%s",
                          lua_tostring(L, 1), filename, lua_tostring(L, -1));
}
