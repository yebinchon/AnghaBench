
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
typedef int lua_Integer ;


 scalar_t__ lua_numbertointeger (int ,int *) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnumber (int *,int ) ;

__attribute__((used)) static void pushnumint (lua_State *L, lua_Number d) {
  lua_Integer n;
  if (lua_numbertointeger(d, &n))
    lua_pushinteger(L, n);
  else
    lua_pushnumber(L, d);
}
