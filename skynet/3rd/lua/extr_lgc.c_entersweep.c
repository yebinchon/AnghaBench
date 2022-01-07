
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int allgc; int * sweepgc; int gcstate; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int GCSswpallgc ;
 int lua_assert (int ) ;
 int * sweeplist (int *,int *,int) ;

__attribute__((used)) static void entersweep (lua_State *L) {
  global_State *g = G(L);
  g->gcstate = GCSswpallgc;
  lua_assert(g->sweepgc == ((void*)0));
  g->sweepgc = sweeplist(L, &g->allgc, 1);
}
