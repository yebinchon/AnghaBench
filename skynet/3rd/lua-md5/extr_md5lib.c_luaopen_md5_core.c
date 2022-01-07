
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_setfuncs (int *,int ,int ) ;
 int lua_newtable (int *) ;
 int md5lib ;
 int set_info (int *) ;

int luaopen_md5_core (lua_State *L) {
  lua_newtable(L);
  luaL_setfuncs(L, md5lib, 0);
  set_info (L);
  return 1;
}
