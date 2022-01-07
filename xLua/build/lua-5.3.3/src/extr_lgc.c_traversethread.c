
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int stacksize; int nci; struct TYPE_8__* twups; int * openupval; int * stack; int * top; } ;
typedef TYPE_1__ lua_State ;
typedef int lu_mem ;
struct TYPE_9__ {scalar_t__ gcstate; scalar_t__ gckind; TYPE_1__* twups; } ;
typedef TYPE_2__ global_State ;
typedef int TValue ;
typedef int * StkId ;
typedef int CallInfo ;


 scalar_t__ GCSinsideatomic ;
 scalar_t__ KGC_EMERGENCY ;
 scalar_t__ isintwups (TYPE_1__*) ;
 int luaD_shrinkstack (TYPE_1__*) ;
 int lua_assert (int) ;
 int markvalue (TYPE_2__*,int *) ;
 int setnilvalue (int *) ;

__attribute__((used)) static lu_mem traversethread (global_State *g, lua_State *th) {
  StkId o = th->stack;
  if (o == ((void*)0))
    return 1;
  lua_assert(g->gcstate == GCSinsideatomic ||
             th->openupval == ((void*)0) || isintwups(th));
  for (; o < th->top; o++)
    markvalue(g, o);
  if (g->gcstate == GCSinsideatomic) {
    StkId lim = th->stack + th->stacksize;
    for (; o < lim; o++)
      setnilvalue(o);

    if (!isintwups(th) && th->openupval != ((void*)0)) {
      th->twups = g->twups;
      g->twups = th;
    }
  }
  else if (g->gckind != KGC_EMERGENCY)
    luaD_shrinkstack(th);
  return (sizeof(lua_State) + sizeof(TValue) * th->stacksize +
          sizeof(CallInfo) * th->nci);
}
