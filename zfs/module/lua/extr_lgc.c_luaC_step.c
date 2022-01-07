
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {scalar_t__ gcrunning; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int GCSTEPSIZE ;
 int luaC_forcestep (int *) ;
 int luaE_setdebt (TYPE_1__*,int ) ;

void luaC_step (lua_State *L) {
  global_State *g = G(L);
  if (g->gcrunning) luaC_forcestep(L);
  else luaE_setdebt(g, -GCSTEPSIZE);
}
