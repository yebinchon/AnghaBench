
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int lua_State ;
typedef scalar_t__ lua_Integer ;


 int luaL_argcheck (int *,int,int,char*) ;
 scalar_t__ luaL_checkinteger (int *,int) ;

__attribute__((used)) static time_t l_checktime (lua_State *L, int arg) {
  lua_Integer t = luaL_checkinteger(L, arg);
  luaL_argcheck(L, (time_t)t == t, arg, "time out-of-bounds");
  return (time_t)t;
}
