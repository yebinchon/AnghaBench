
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* findfile (int *,char const*,char*) ;
 scalar_t__ ll_loadfunc (int *,char const*,char const*) ;
 int loaderror (int *,char const*) ;
 char* luaL_checkstring (int *,int) ;
 char* mkfuncname (int *,char const*) ;

__attribute__((used)) static int loader_C (lua_State *L) {
  const char *funcname;
  const char *name = luaL_checkstring(L, 1);
  const char *filename = findfile(L, name, "cpath");
  if (filename == ((void*)0)) return 1;
  funcname = mkfuncname(L, name);
  if (ll_loadfunc(L, filename, funcname) != 0)
    loaderror(L, filename);
  return 1;
}
