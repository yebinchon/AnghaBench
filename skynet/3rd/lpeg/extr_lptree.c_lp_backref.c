
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int Cbackref ;
 int luaL_checkany (int *,int) ;
 int newemptycapkey (int *,int ,int) ;

__attribute__((used)) static int lp_backref (lua_State *L) {
  luaL_checkany(L, 1);
  newemptycapkey(L, Cbackref, 1);
  return 1;
}
