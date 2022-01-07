
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
typedef int lu_mem ;
typedef scalar_t__ l_mem ;
struct TYPE_3__ {int gcstate; int ** sweepgc; scalar_t__ GCdebt; int GCestimate; } ;
typedef TYPE_1__ global_State ;
typedef int GCObject ;


 int GCSWEEPCOST ;
 int GCSWEEPMAX ;
 int ** sweeplist (int *,int **,int) ;

__attribute__((used)) static lu_mem sweepstep (lua_State *L, global_State *g,
                         int nextstate, GCObject **nextlist) {
  if (g->sweepgc) {
    l_mem olddebt = g->GCdebt;
    g->sweepgc = sweeplist(L, g->sweepgc, GCSWEEPMAX);
    g->GCestimate += g->GCdebt - olddebt;
    if (g->sweepgc)
      return (GCSWEEPMAX * GCSWEEPCOST);
  }

  g->gcstate = nextstate;
  g->sweepgc = nextlist;
  return 0;
}
