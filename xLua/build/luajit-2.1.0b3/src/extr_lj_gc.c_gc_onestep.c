
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_11__ {int state; int sweepstr; size_t total; size_t estimate; int nocdatafin; int debt; int mmudata; int sweep; int gray; } ;
struct TYPE_12__ {int strmask; int strnum; TYPE_1__ gc; int jit_base; int * strhash; } ;
typedef TYPE_2__ global_State ;
struct TYPE_13__ {int finalizer; } ;
typedef size_t GCSize ;


 TYPE_2__* G (int *) ;
 size_t GCFINALIZECOST ;
 int GCRef ;
 size_t GCSWEEPCOST ;
 size_t GCSWEEPMAX ;






 size_t LJ_MAX_MEM ;
 int LJ_MIN_STRTAB ;
 int atomic (TYPE_2__*,int *) ;
 TYPE_7__* ctype_ctsG (TYPE_2__*) ;
 int gc_finalize (int *) ;
 int gc_fullsweep (TYPE_2__*,int *) ;
 int gc_mark_start (TYPE_2__*) ;
 int gc_sweep (TYPE_2__*,int *,size_t) ;
 int * gcref (int ) ;
 int lj_str_resize (int *,int) ;
 int lj_tab_rehash (int *,int ) ;
 int lua_assert (int) ;
 int * mref (int ,int ) ;
 size_t propagatemark (TYPE_2__*) ;
 int setmref (int ,int ) ;
 int tvref (int ) ;

__attribute__((used)) static size_t gc_onestep(lua_State *L)
{
  global_State *g = G(L);
  switch (g->gc.state) {
  case 131:
    gc_mark_start(g);
    return 0;
  case 130:
    if (gcref(g->gc.gray) != ((void*)0))
      return propagatemark(g);
    g->gc.state = 133;
    return 0;
  case 133:
    if (tvref(g->jit_base))
      return LJ_MAX_MEM;
    atomic(g, L);
    g->gc.state = 128;
    g->gc.sweepstr = 0;
    return 0;
  case 128: {
    GCSize old = g->gc.total;
    gc_fullsweep(g, &g->strhash[g->gc.sweepstr++]);
    if (g->gc.sweepstr > g->strmask)
      g->gc.state = 129;
    lua_assert(old >= g->gc.total);
    g->gc.estimate -= old - g->gc.total;
    return GCSWEEPCOST;
    }
  case 129: {
    GCSize old = g->gc.total;
    setmref(g->gc.sweep, gc_sweep(g, mref(g->gc.sweep, GCRef), GCSWEEPMAX));
    lua_assert(old >= g->gc.total);
    g->gc.estimate -= old - g->gc.total;
    if (gcref(*mref(g->gc.sweep, GCRef)) == ((void*)0)) {
      if (g->strnum <= (g->strmask >> 2) && g->strmask > LJ_MIN_STRTAB*2-1)
 lj_str_resize(L, g->strmask >> 1);
      if (gcref(g->gc.mmudata)) {
 g->gc.state = 132;



      } else {
 g->gc.state = 131;
 g->gc.debt = 0;
      }
    }
    return GCSWEEPMAX*GCSWEEPCOST;
    }
  case 132:
    if (gcref(g->gc.mmudata) != ((void*)0)) {
      if (tvref(g->jit_base))
 return LJ_MAX_MEM;
      gc_finalize(L);
      if (g->gc.estimate > GCFINALIZECOST)
 g->gc.estimate -= GCFINALIZECOST;
      return GCFINALIZECOST;
    }



    g->gc.state = 131;
    g->gc.debt = 0;
    return 0;
  default:
    lua_assert(0);
    return 0;
  }
}
