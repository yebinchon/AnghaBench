
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int * getthread (int *,int*) ;
 scalar_t__ luaL_optinteger (int *,int,int) ;
 int luaL_traceback (int *,int *,char const*,int) ;
 int lua_isnoneornil (int *,int) ;
 int lua_pushvalue (int *,int) ;
 char* lua_tostring (int *,int) ;

__attribute__((used)) static int db_traceback (lua_State *L) {
  int arg;
  lua_State *L1 = getthread(L, &arg);
  const char *msg = lua_tostring(L, arg + 1);
  if (msg == ((void*)0) && !lua_isnoneornil(L, arg + 1))
    lua_pushvalue(L, arg + 1);
  else {
    int level = (int)luaL_optinteger(L, arg + 2, (L == L1) ? 1 : 0);
    luaL_traceback(L, L1, msg, level);
  }
  return 1;
}
