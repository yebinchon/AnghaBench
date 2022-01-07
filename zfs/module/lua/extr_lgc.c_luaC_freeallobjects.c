
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int size; scalar_t__ nuse; int ** hash; } ;
struct TYPE_5__ {TYPE_1__ strt; int * allgc; int * finobj; int gckind; int currentwhite; } ;
typedef TYPE_2__ global_State ;


 TYPE_2__* G (int *) ;
 int KGC_NORMAL ;
 int WHITEBITS ;
 int callallpendingfinalizers (int *,int ) ;
 int lua_assert (int) ;
 int separatetobefnz (int *,int) ;
 int sweepwholelist (int *,int **) ;

void luaC_freeallobjects (lua_State *L) {
  global_State *g = G(L);
  int i;
  separatetobefnz(L, 1);
  lua_assert(g->finobj == ((void*)0));
  callallpendingfinalizers(L, 0);
  g->currentwhite = WHITEBITS;
  g->gckind = KGC_NORMAL;
  sweepwholelist(L, &g->finobj);
  sweepwholelist(L, &g->allgc);
  for (i = 0; i < g->strt.size; i++)
    sweepwholelist(L, &g->strt.hash[i]);
  lua_assert(g->strt.nuse == 0);
}
