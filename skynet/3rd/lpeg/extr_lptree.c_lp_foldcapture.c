
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int Cfold ;
 int LUA_TFUNCTION ;
 int capture_aux (int *,int ,int) ;
 int luaL_checktype (int *,int,int ) ;

__attribute__((used)) static int lp_foldcapture (lua_State *L) {
  luaL_checktype(L, 2, LUA_TFUNCTION);
  return capture_aux(L, Cfold, 2);
}
