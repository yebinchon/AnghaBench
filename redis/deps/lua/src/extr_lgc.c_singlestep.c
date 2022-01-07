
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
typedef int lu_mem ;
typedef int l_mem ;
struct TYPE_5__ {int size; int * hash; } ;
struct TYPE_6__ {int gcstate; int totalbytes; int estimate; int gcdept; int tmudata; int ** sweepgc; TYPE_1__ strt; int sweepstrgc; int gray; } ;
typedef TYPE_2__ global_State ;


 TYPE_2__* G (int *) ;
 int GCFINALIZECOST ;
 int GCSWEEPCOST ;
 int GCSWEEPMAX ;





 int GCTM (int *) ;
 int atomic (int *) ;
 int checkSizes (int *) ;
 int lua_assert (int) ;
 int markroot (int *) ;
 int propagatemark (TYPE_2__*) ;
 int ** sweeplist (int *,int **,int) ;
 int sweepwholelist (int *,int *) ;

__attribute__((used)) static l_mem singlestep (lua_State *L) {
  global_State *g = G(L);

  switch (g->gcstate) {
    case 131: {
      markroot(L);
      return 0;
    }
    case 130: {
      if (g->gray)
        return propagatemark(g);
      else {
        atomic(L);
        return 0;
      }
    }
    case 128: {
      lu_mem old = g->totalbytes;
      sweepwholelist(L, &g->strt.hash[g->sweepstrgc++]);
      if (g->sweepstrgc >= g->strt.size)
        g->gcstate = 129;
      lua_assert(old >= g->totalbytes);
      g->estimate -= old - g->totalbytes;
      return GCSWEEPCOST;
    }
    case 129: {
      lu_mem old = g->totalbytes;
      g->sweepgc = sweeplist(L, g->sweepgc, GCSWEEPMAX);
      if (*g->sweepgc == ((void*)0)) {
        checkSizes(L);
        g->gcstate = 132;
      }
      lua_assert(old >= g->totalbytes);
      g->estimate -= old - g->totalbytes;
      return GCSWEEPMAX*GCSWEEPCOST;
    }
    case 132: {
      if (g->tmudata) {
        GCTM(L);
        if (g->estimate > GCFINALIZECOST)
          g->estimate -= GCFINALIZECOST;
        return GCFINALIZECOST;
      }
      else {
        g->gcstate = 131;
        g->gcdept = 0;
        return 0;
      }
    }
    default: lua_assert(0); return 0;
  }
}
