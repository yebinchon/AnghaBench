
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int aux_getn (int *,int) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int getn (lua_State *L) {
  lua_pushinteger(L, aux_getn(L, 1));
  return 1;
}
