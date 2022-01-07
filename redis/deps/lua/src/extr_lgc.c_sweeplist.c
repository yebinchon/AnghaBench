
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


typedef int lua_State ;
typedef int lu_mem ;
struct TYPE_17__ {TYPE_3__* rootgc; } ;
typedef TYPE_2__ global_State ;
struct TYPE_16__ {scalar_t__ tt; int marked; TYPE_3__* next; } ;
struct TYPE_18__ {TYPE_1__ gch; } ;
struct TYPE_15__ {int openupval; } ;
typedef TYPE_3__ GCObject ;


 int FIXEDBIT ;
 TYPE_2__* G (int *) ;
 scalar_t__ LUA_TTHREAD ;
 int SFIXEDBIT ;
 int WHITEBITS ;
 int bitmask (int ) ;
 int freeobj (int *,TYPE_3__*) ;
 TYPE_11__* gco2th (TYPE_3__*) ;
 scalar_t__ isdead (TYPE_2__*,TYPE_3__*) ;
 int lua_assert (int) ;
 int makewhite (TYPE_2__*,TYPE_3__*) ;
 int otherwhite (TYPE_2__*) ;
 int sweepwholelist (int *,int *) ;
 scalar_t__ testbit (int,int ) ;

__attribute__((used)) static GCObject **sweeplist (lua_State *L, GCObject **p, lu_mem count) {
  GCObject *curr;
  global_State *g = G(L);
  int deadmask = otherwhite(g);
  while ((curr = *p) != ((void*)0) && count-- > 0) {
    if (curr->gch.tt == LUA_TTHREAD)
      sweepwholelist(L, &gco2th(curr)->openupval);
    if ((curr->gch.marked ^ WHITEBITS) & deadmask) {
      lua_assert(!isdead(g, curr) || testbit(curr->gch.marked, FIXEDBIT));
      makewhite(g, curr);
      p = &curr->gch.next;
    }
    else {
      lua_assert(isdead(g, curr) || deadmask == bitmask(SFIXEDBIT));
      *p = curr->gch.next;
      if (curr == g->rootgc)
        g->rootgc = curr->gch.next;
      freeobj(L, curr);
    }
  }
  return p;
}
