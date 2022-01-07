
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int TAnd ;
 int newroot1sib (int *,int ) ;

__attribute__((used)) static int lp_and (lua_State *L) {
  newroot1sib(L, TAnd);
  return 1;
}
