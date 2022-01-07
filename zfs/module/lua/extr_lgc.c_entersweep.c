
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int allgc; int * sweepgc; int finobj; int * sweepfin; scalar_t__ sweepstrgc; int gcstate; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int GCSsweepstring ;
 int lua_assert (int) ;
 void* sweeptolive (int *,int *,int*) ;

__attribute__((used)) static int entersweep (lua_State *L) {
  global_State *g = G(L);
  int n = 0;
  g->gcstate = GCSsweepstring;
  lua_assert(g->sweepgc == ((void*)0) && g->sweepfin == ((void*)0));

  g->sweepstrgc = 0;
  g->sweepfin = sweeptolive(L, &g->finobj, &n);
  g->sweepgc = sweeptolive(L, &g->allgc, &n);
  return n;
}
