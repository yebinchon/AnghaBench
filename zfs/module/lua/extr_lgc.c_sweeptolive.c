
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int GCObject ;


 int ** sweeplist (int *,int **,int) ;

__attribute__((used)) static GCObject **sweeptolive (lua_State *L, GCObject **p, int *n) {
  GCObject ** old = p;
  int i = 0;
  do {
    i++;
    p = sweeplist(L, p, 1);
  } while (p == old);
  if (n) *n += i;
  return p;
}
