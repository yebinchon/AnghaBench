
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int luaL_addvalue (int *) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_pushresult (int *) ;
 int lua_gettop (int *) ;
 int pushutfchar (int *,int) ;

__attribute__((used)) static int utfchar (lua_State *L) {
  int n = lua_gettop(L);
  if (n == 1)
    pushutfchar(L, 1);
  else {
    int i;
    luaL_Buffer b;
    luaL_buffinit(L, &b);
    for (i = 1; i <= n; i++) {
      pushutfchar(L, i);
      luaL_addvalue(&b);
    }
    luaL_pushresult(&b);
  }
  return 1;
}
