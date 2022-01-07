
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int PACKAGE_ERR_LIB ;
 char* PACKAGE_LIB_FAIL ;
 int ll_loadfunc (int *,char const*,char const*,int) ;
 char* luaL_checkstring (int *,int) ;
 int lua_insert (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;

__attribute__((used)) static int lj_cf_package_loadlib(lua_State *L)
{
  const char *path = luaL_checkstring(L, 1);
  const char *init = luaL_checkstring(L, 2);
  int st = ll_loadfunc(L, path, init, 1);
  if (st == 0) {
    return 1;
  } else {
    lua_pushnil(L);
    lua_insert(L, -2);
    lua_pushstring(L, (st == PACKAGE_ERR_LIB) ? PACKAGE_LIB_FAIL : "init");
    return 3;
  }
}
