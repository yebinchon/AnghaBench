
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ state; } ;
struct TYPE_18__ {TYPE_2__ gc; } ;
typedef TYPE_3__ global_State ;
struct TYPE_16__ {int gct; } ;
struct TYPE_19__ {TYPE_1__ gch; } ;
typedef TYPE_4__ GCobj ;


 scalar_t__ GCSatomic ;
 scalar_t__ GCSfinalize ;
 scalar_t__ GCSpause ;
 scalar_t__ GCSpropagate ;
 int LJ_TTAB ;
 int gc_mark (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ isblack (TYPE_4__*) ;
 int isdead (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ iswhite (TYPE_4__*) ;
 int lua_assert (int) ;
 int makewhite (TYPE_3__*,TYPE_4__*) ;

void lj_gc_barrierf(global_State *g, GCobj *o, GCobj *v)
{
  lua_assert(isblack(o) && iswhite(v) && !isdead(g, v) && !isdead(g, o));
  lua_assert(g->gc.state != GCSfinalize && g->gc.state != GCSpause);
  lua_assert(o->gch.gct != ~LJ_TTAB);

  if (g->gc.state == GCSpropagate || g->gc.state == GCSatomic)
    gc_mark(g, v);
  else
    makewhite(g, o);
}
