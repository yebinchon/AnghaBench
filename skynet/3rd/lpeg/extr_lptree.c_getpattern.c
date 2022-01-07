
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Pattern ;


 int PATTERN_T ;
 scalar_t__ luaL_checkudata (int *,int,int ) ;

__attribute__((used)) static Pattern *getpattern (lua_State *L, int idx) {
  return (Pattern *)luaL_checkudata(L, idx, PATTERN_T);
}
