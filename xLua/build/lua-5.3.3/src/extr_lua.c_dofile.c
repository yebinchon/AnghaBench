
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int dochunk (int *,int ) ;
 int luaL_loadfile (int *,char const*) ;

__attribute__((used)) static int dofile (lua_State *L, const char *name) {
  return dochunk(L, luaL_loadfile(L, name));
}
