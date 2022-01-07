
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;
typedef int luaL_Buffer ;


 int TAB_R ;
 int addfield (int *,int *,int) ;
 int aux_getn (int *,int,int ) ;
 int luaL_addlstring (int *,char const*,size_t) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_optinteger (int *,int,int) ;
 char* luaL_optlstring (int *,int,char*,size_t*) ;
 int luaL_pushresult (int *) ;

__attribute__((used)) static int tconcat (lua_State *L) {
  luaL_Buffer b;
  lua_Integer last = aux_getn(L, 1, TAB_R);
  size_t lsep;
  const char *sep = luaL_optlstring(L, 2, "", &lsep);
  lua_Integer i = luaL_optinteger(L, 3, 1);
  last = luaL_optinteger(L, 4, last);
  luaL_buffinit(L, &b);
  for (; i < last; i++) {
    addfield(L, &b, i);
    luaL_addlstring(&b, sep, lsep);
  }
  if (i == last)
    addfield(L, &b, i);
  luaL_pushresult(&b);
  return 1;
}
