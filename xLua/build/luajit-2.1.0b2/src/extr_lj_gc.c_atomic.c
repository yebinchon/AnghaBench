
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int lua_State ;
struct TYPE_15__ {scalar_t__ total; scalar_t__ estimate; int root; int sweep; scalar_t__ currentwhite; int weak; int grayagain; int gray; } ;
struct TYPE_14__ {scalar_t__ marked; } ;
struct TYPE_16__ {TYPE_2__ gc; TYPE_1__ strempty; int tmpbuf; } ;
typedef TYPE_3__ global_State ;
typedef scalar_t__ GCSize ;


 int gc_clearweak (int ) ;
 int gc_mark_gcroot (TYPE_3__*) ;
 int gc_mark_mmudata (TYPE_3__*) ;
 int gc_mark_uv (TYPE_3__*) ;
 int gc_markobj (TYPE_3__*,int *) ;
 scalar_t__ gc_propagate_gray (TYPE_3__*) ;
 int gc_traverse_curtrace (TYPE_3__*) ;
 int gcref (int ) ;
 int iswhite (int ) ;
 int lj_buf_shrink (int *,int *) ;
 size_t lj_gc_separateudata (TYPE_3__*,int ) ;
 int lua_assert (int) ;
 int mainthread (TYPE_3__*) ;
 int obj2gco (int ) ;
 scalar_t__ otherwhite (TYPE_3__*) ;
 int setgcrefnull (int ) ;
 int setgcrefr (int ,int ) ;
 int setmref (int ,int *) ;

__attribute__((used)) static void atomic(global_State *g, lua_State *L)
{
  size_t udsize;

  gc_mark_uv(g);
  gc_propagate_gray(g);

  setgcrefr(g->gc.gray, g->gc.weak);
  setgcrefnull(g->gc.weak);
  lua_assert(!iswhite(obj2gco(mainthread(g))));
  gc_markobj(g, L);
  gc_traverse_curtrace(g);
  gc_mark_gcroot(g);
  gc_propagate_gray(g);

  setgcrefr(g->gc.gray, g->gc.grayagain);
  setgcrefnull(g->gc.grayagain);
  gc_propagate_gray(g);

  udsize = lj_gc_separateudata(g, 0);
  gc_mark_mmudata(g);
  udsize += gc_propagate_gray(g);


  gc_clearweak(gcref(g->gc.weak));

  lj_buf_shrink(L, &g->tmpbuf);


  g->gc.currentwhite = (uint8_t)otherwhite(g);
  g->strempty.marked = g->gc.currentwhite;
  setmref(g->gc.sweep, &g->gc.root);
  g->gc.estimate = g->gc.total - (GCSize)udsize;
}
