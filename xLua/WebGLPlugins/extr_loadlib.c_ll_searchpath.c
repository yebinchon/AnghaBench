
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* LUA_DIRSEP ;
 int luaL_checkstring (int *,int) ;
 int luaL_optstring (int *,int,char*) ;
 int lua_insert (int *,int) ;
 int lua_pushnil (int *) ;
 char* searchpath (int *,int ,int ,int ,int ) ;

__attribute__((used)) static int ll_searchpath (lua_State *L) {
  const char *f = searchpath(L, luaL_checkstring(L, 1),
                                luaL_checkstring(L, 2),
                                luaL_optstring(L, 3, "."),
                                luaL_optstring(L, 4, LUA_DIRSEP));
  if (f != ((void*)0)) return 1;
  else {
    lua_pushnil(L);
    lua_insert(L, -2);
    return 2;
  }
}
