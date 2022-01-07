
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Pattern ;


 int * getpattern (int *,int) ;
 int realloccode (int *,int *,int ) ;

int lp_gc (lua_State *L) {
  Pattern *p = getpattern(L, 1);
  realloccode(L, p, 0);
  return 0;
}
