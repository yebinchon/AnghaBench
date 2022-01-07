
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ state; int root; } ;
struct TYPE_21__ {TYPE_2__ gc; } ;
typedef TYPE_3__ global_State ;
struct TYPE_19__ {int nextgc; } ;
struct TYPE_23__ {TYPE_1__ gch; } ;
struct TYPE_22__ {int closed; int tv; int v; } ;
typedef TYPE_4__ GCupval ;
typedef TYPE_5__ GCobj ;


 scalar_t__ GCSatomic ;
 scalar_t__ GCSfinalize ;
 scalar_t__ GCSpause ;
 scalar_t__ GCSpropagate ;
 int copyTV (int ,int *,int ) ;
 int gcV (int *) ;
 int gray2black (TYPE_5__*) ;
 scalar_t__ isgray (TYPE_5__*) ;
 int lj_gc_barrierf (TYPE_3__*,TYPE_5__*,int ) ;
 int lua_assert (int) ;
 int mainthread (TYPE_3__*) ;
 int makewhite (TYPE_3__*,TYPE_5__*) ;
 TYPE_5__* obj2gco (TYPE_4__*) ;
 int setgcref (int ,TYPE_5__*) ;
 int setgcrefr (int ,int ) ;
 int setmref (int ,int *) ;
 scalar_t__ tviswhite (int *) ;
 int uvval (TYPE_4__*) ;

void lj_gc_closeuv(global_State *g, GCupval *uv)
{
  GCobj *o = obj2gco(uv);

  copyTV(mainthread(g), &uv->tv, uvval(uv));
  setmref(uv->v, &uv->tv);
  uv->closed = 1;
  setgcrefr(o->gch.nextgc, g->gc.root);
  setgcref(g->gc.root, o);
  if (isgray(o)) {
    if (g->gc.state == GCSpropagate || g->gc.state == GCSatomic) {
      gray2black(o);
      if (tviswhite(&uv->tv))
 lj_gc_barrierf(g, o, gcV(&uv->tv));
    } else {
      makewhite(g, o);
      lua_assert(g->gc.state != GCSfinalize && g->gc.state != GCSpause);
    }
  }
}
