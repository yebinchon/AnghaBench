
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
typedef int int32_t ;
struct TYPE_5__ {scalar_t__ state; int threshold; int estimate; int pause; scalar_t__ sweepstr; int weak; int grayagain; int gray; int root; int sweep; } ;
struct TYPE_6__ {int vmstate; TYPE_1__ gc; } ;
typedef TYPE_2__ global_State ;


 TYPE_2__* G (int *) ;
 int GC ;
 scalar_t__ GCSatomic ;
 scalar_t__ GCSfinalize ;
 scalar_t__ GCSpause ;
 scalar_t__ GCSsweep ;
 scalar_t__ GCSsweepstring ;
 int gc_onestep (int *) ;
 int lua_assert (int) ;
 int setgcrefnull (int ) ;
 int setmref (int ,int *) ;
 int setvmstate (TYPE_2__*,int ) ;

void lj_gc_fullgc(lua_State *L)
{
  global_State *g = G(L);
  int32_t ostate = g->vmstate;
  setvmstate(g, GC);
  if (g->gc.state <= GCSatomic) {
    setmref(g->gc.sweep, &g->gc.root);
    setgcrefnull(g->gc.gray);
    setgcrefnull(g->gc.grayagain);
    setgcrefnull(g->gc.weak);
    g->gc.state = GCSsweepstring;
    g->gc.sweepstr = 0;
  }
  while (g->gc.state == GCSsweepstring || g->gc.state == GCSsweep)
    gc_onestep(L);
  lua_assert(g->gc.state == GCSfinalize || g->gc.state == GCSpause);

  g->gc.state = GCSpause;
  do { gc_onestep(L); } while (g->gc.state != GCSpause);
  g->gc.threshold = (g->gc.estimate/100) * g->gc.pause;
  g->vmstate = ostate;
}
