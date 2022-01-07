
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* findfile (int *,char const*,char*) ;
 scalar_t__ ll_loadfunc (int *,char const*,char const*,int ) ;
 int loaderror (int *,char const*) ;
 char* luaL_checkstring (int *,int) ;

__attribute__((used)) static int lj_cf_package_loader_c(lua_State *L)
{
  const char *name = luaL_checkstring(L, 1);
  const char *filename = findfile(L, name, "cpath");
  if (filename == ((void*)0)) return 1;
  if (ll_loadfunc(L, filename, name, 0) != 0)
    loaderror(L, filename);
  return 1;
}
