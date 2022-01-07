
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TFUNCTION ;
 int luaL_checkint (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 char* lua_getupvalue (int *,int,int) ;
 int lua_insert (int *,int) ;
 scalar_t__ lua_iscfunction (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 char* lua_setupvalue (int *,int,int) ;

__attribute__((used)) static int auxupvalue (lua_State *L, int get) {
  const char *name;
  int n = luaL_checkint(L, 2);
  luaL_checktype(L, 1, LUA_TFUNCTION);
  if (lua_iscfunction(L, 1)) return 0;
  name = get ? lua_getupvalue(L, 1, n) : lua_setupvalue(L, 1, n);
  if (name == ((void*)0)) return 0;
  lua_pushstring(L, name);
  lua_insert(L, -(get+1));
  return get + 1;
}
