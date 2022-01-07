
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int ERRFUNC ;
 int LUA_CSUBSEP ;
 int checkload (int *,int ,char const*) ;
 char* findfile (int *,int ,char*,int ) ;
 int loadfunc (int *,char const*,char const*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushfstring (int *,char*,char const*,char const*) ;
 int lua_pushlstring (int *,char const*,int) ;
 int lua_pushstring (int *,char const*) ;
 int lua_tostring (int *,int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int searcher_Croot (lua_State *L) {
  const char *filename;
  const char *name = luaL_checkstring(L, 1);
  const char *p = strchr(name, '.');
  int stat;
  if (p == ((void*)0)) return 0;
  lua_pushlstring(L, name, p - name);
  filename = findfile(L, lua_tostring(L, -1), "cpath", LUA_CSUBSEP);
  if (filename == ((void*)0)) return 1;
  if ((stat = loadfunc(L, filename, name)) != 0) {
    if (stat != ERRFUNC)
      return checkload(L, 0, filename);
    else {
      lua_pushfstring(L, "\n\tno module '%s' in file '%s'", name, filename);
      return 1;
    }
  }
  lua_pushstring(L, filename);
  return 2;
}
