
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int currentwhite; int root; } ;
struct TYPE_6__ {size_t strmask; int * strhash; TYPE_1__ gc; } ;
typedef TYPE_2__ global_State ;
typedef size_t MSize ;


 int LJ_GC_SFIXED ;
 int LJ_GC_WHITES ;
 int gc_fullsweep (TYPE_2__*,int *) ;

void lj_gc_freeall(global_State *g)
{
  MSize i, strmask;

  g->gc.currentwhite = LJ_GC_WHITES | LJ_GC_SFIXED;
  gc_fullsweep(g, &g->gc.root);
  strmask = g->strmask;
  for (i = 0; i <= strmask; i++)
    gc_fullsweep(g, &g->strhash[i]);
}
