
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_getfield (int *,int,char const*) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_toboolean (int *,int) ;

__attribute__((used)) static int getboolfield (lua_State *L, const char *key) {
  int res;
  lua_getfield(L, -1, key);
  res = lua_isnil(L, -1) ? -1 : lua_toboolean(L, -1);
  lua_pop(L, 1);
  return res;
}
