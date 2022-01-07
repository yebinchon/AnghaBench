
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_15__ {scalar_t__ gcstate; TYPE_4__* rootgc; } ;
typedef TYPE_2__ global_State ;
struct TYPE_16__ {int v; } ;
typedef TYPE_3__ UpVal ;
struct TYPE_14__ {TYPE_4__* next; } ;
struct TYPE_17__ {TYPE_1__ gch; } ;
typedef TYPE_4__ GCObject ;


 TYPE_2__* G (int *) ;
 scalar_t__ GCSfinalize ;
 scalar_t__ GCSpause ;
 scalar_t__ GCSpropagate ;
 int gray2black (TYPE_4__*) ;
 scalar_t__ isgray (TYPE_4__*) ;
 int luaC_barrier (int *,TYPE_3__*,int ) ;
 int lua_assert (int) ;
 int makewhite (TYPE_2__*,TYPE_4__*) ;
 TYPE_4__* obj2gco (TYPE_3__*) ;

void luaC_linkupval (lua_State *L, UpVal *uv) {
  global_State *g = G(L);
  GCObject *o = obj2gco(uv);
  o->gch.next = g->rootgc;
  g->rootgc = o;
  if (isgray(o)) {
    if (g->gcstate == GCSpropagate) {
      gray2black(o);
      luaC_barrier(L, uv, uv->v);
    }
    else {
      makewhite(g, o);
      lua_assert(g->gcstate != GCSfinalize && g->gcstate != GCSpause);
    }
  }
}
