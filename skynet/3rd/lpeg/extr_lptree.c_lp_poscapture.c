
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int Cposition ;
 int newemptycap (int *,int ) ;

__attribute__((used)) static int lp_poscapture (lua_State *L) {
  newemptycap(L, Cposition);
  return 1;
}
