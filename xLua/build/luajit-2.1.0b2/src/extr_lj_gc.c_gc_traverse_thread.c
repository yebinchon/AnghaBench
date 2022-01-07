
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int stacksize; int env; int stack; int * top; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_11__ {scalar_t__ state; } ;
struct TYPE_13__ {TYPE_1__ gc; } ;
typedef TYPE_3__ global_State ;
typedef int TValue ;


 scalar_t__ GCSatomic ;
 int LJ_FR2 ;
 int gc_markobj (TYPE_3__*,int ) ;
 int gc_marktv (TYPE_3__*,int *) ;
 int gc_traverse_frames (TYPE_3__*,TYPE_2__*) ;
 int lj_state_shrinkstack (TYPE_2__*,int ) ;
 int setnilV (int *) ;
 int tabref (int ) ;
 int * tvref (int ) ;

__attribute__((used)) static void gc_traverse_thread(global_State *g, lua_State *th)
{
  TValue *o, *top = th->top;
  for (o = tvref(th->stack)+1+LJ_FR2; o < top; o++)
    gc_marktv(g, o);
  if (g->gc.state == GCSatomic) {
    top = tvref(th->stack) + th->stacksize;
    for (; o < top; o++)
      setnilV(o);
  }
  gc_markobj(g, tabref(th->env));
  lj_state_shrinkstack(th, gc_traverse_frames(g, th));
}
