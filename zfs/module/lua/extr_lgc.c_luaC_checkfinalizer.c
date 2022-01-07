
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_9__ {int * finobj; int * allgc; int ** sweepgc; } ;
typedef TYPE_1__ global_State ;
typedef int Table ;
struct TYPE_10__ {int marked; int * next; } ;
typedef TYPE_2__ GCheader ;
typedef int GCObject ;


 TYPE_1__* G (int *) ;
 int SEPARATED ;
 int TM_GC ;
 TYPE_2__* gch (int *) ;
 int * gfasttm (TYPE_1__*,int *,int ) ;
 scalar_t__ isfinalized (int *) ;
 int issweepphase (TYPE_1__*) ;
 int keepinvariantout (TYPE_1__*) ;
 int l_setbit (int ,int ) ;
 int lua_assert (int ) ;
 int makewhite (TYPE_1__*,int *) ;
 int resetoldbit (int *) ;
 int ** sweeptolive (int *,int **,int *) ;
 scalar_t__ testbit (int ,int ) ;

void luaC_checkfinalizer (lua_State *L, GCObject *o, Table *mt) {
  global_State *g = G(L);
  if (testbit(gch(o)->marked, SEPARATED) ||
      isfinalized(o) ||
      gfasttm(g, mt, TM_GC) == ((void*)0))
    return;
  else {
    GCObject **p;
    GCheader *ho = gch(o);
    if (g->sweepgc == &ho->next) {
      lua_assert(issweepphase(g));
      g->sweepgc = sweeptolive(L, g->sweepgc, ((void*)0));
    }

    for (p = &g->allgc; *p != o; p = &gch(*p)->next) { }
    *p = ho->next;
    ho->next = g->finobj;
    g->finobj = o;
    l_setbit(ho->marked, SEPARATED);
    if (!keepinvariantout(g))
      makewhite(g, o);
    else
      resetoldbit(o);
  }
}
