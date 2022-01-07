
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {scalar_t__ gcstate; scalar_t__ tobefnz; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int GCFINALIZENUM ;
 scalar_t__ GCSpause ;
 int GCTM (int *,int) ;
 int generationalcollection (int *) ;
 int incstep (int *) ;
 scalar_t__ isgenerational (TYPE_1__*) ;

void luaC_forcestep (lua_State *L) {
  global_State *g = G(L);
  int i;
  if (isgenerational(g)) generationalcollection(L);
  else incstep(L);

  for (i = 0; g->tobefnz && (i < GCFINALIZENUM || g->gcstate == GCSpause); i++)
    GCTM(L, 1);
}
