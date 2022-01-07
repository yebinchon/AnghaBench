
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {TYPE_2__* fixedgc; TYPE_2__* allgc; } ;
typedef TYPE_1__ global_State ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ GCObject ;


 TYPE_1__* G (int *) ;
 int lua_assert (int) ;
 int white2gray (TYPE_2__*) ;

void luaC_fix (lua_State *L, GCObject *o) {
  global_State *g = G(L);
  lua_assert(g->allgc == o);
  white2gray(o);
  g->allgc = o->next;
  o->next = g->fixedgc;
  g->fixedgc = o;
}
