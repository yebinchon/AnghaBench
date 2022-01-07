
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int gckind; int GCestimate; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int GCSpropagate ;
 int KGC_GEN ;
 int KGC_NORMAL ;
 int bitmask (int ) ;
 int entersweep (int *) ;
 int gettotalbytes (TYPE_1__*) ;
 int luaC_runtilstate (int *,int ) ;
 int sweepphases ;

void luaC_changemode (lua_State *L, int mode) {
  global_State *g = G(L);
  if (mode == g->gckind) return;
  if (mode == KGC_GEN) {

    luaC_runtilstate(L, bitmask(GCSpropagate));
    g->GCestimate = gettotalbytes(g);
    g->gckind = KGC_GEN;
  }
  else {


    g->gckind = KGC_NORMAL;
    entersweep(L);
    luaC_runtilstate(L, ~sweepphases);
  }
}
