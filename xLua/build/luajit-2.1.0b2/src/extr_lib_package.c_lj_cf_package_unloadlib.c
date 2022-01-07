
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int ll_unloadlib (void*) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;

__attribute__((used)) static int lj_cf_package_unloadlib(lua_State *L)
{
  void **lib = (void **)luaL_checkudata(L, 1, "_LOADLIB");
  if (*lib) ll_unloadlib(*lib);
  *lib = ((void*)0);
  return 0;
}
