
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int LUA_TTABLE ;
 int addfield (int *,int *,int) ;
 int luaL_addlstring (int *,char const*,size_t) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_checkint ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_len (int *,int) ;
 int luaL_opt (int *,int ,int,int ) ;
 int luaL_optint (int *,int,int) ;
 char* luaL_optlstring (int *,int,char*,size_t*) ;
 int luaL_pushresult (int *) ;

__attribute__((used)) static int tconcat (lua_State *L) {
  luaL_Buffer b;
  size_t lsep;
  int i, last;
  const char *sep = luaL_optlstring(L, 2, "", &lsep);
  luaL_checktype(L, 1, LUA_TTABLE);
  i = luaL_optint(L, 3, 1);
  last = luaL_opt(L, luaL_checkint, 4, luaL_len(L, 1));
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
