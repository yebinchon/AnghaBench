#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int lu_mem ;
struct TYPE_11__ {int size; } ;
struct TYPE_12__ {int gcstate; int GCmemtrav; int /*<<< orphan*/  gckind; int /*<<< orphan*/  tobefnz; int /*<<< orphan*/  mainthread; int /*<<< orphan*/  finobj; int /*<<< orphan*/  GCestimate; int /*<<< orphan*/ * gray; TYPE_1__ strt; } ;
typedef  TYPE_2__ global_State ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int GCFINALIZECOST ; 
#define  GCSatomic 135 
#define  GCScallfin 134 
#define  GCSpause 133 
#define  GCSpropagate 132 
#define  GCSswpallgc 131 
#define  GCSswpend 130 
#define  GCSswpfinobj 129 
#define  GCSswptobefnz 128 
 int /*<<< orphan*/  KGC_EMERGENCY ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static lu_mem FUNC12 (lua_State *L) {
  global_State *g = FUNC0(L);
  switch (g->gcstate) {
    case GCSpause: {
      g->GCmemtrav = g->strt.size * sizeof(GCObject*);
      FUNC9(g);
      g->gcstate = GCSpropagate;
      return g->GCmemtrav;
    }
    case GCSpropagate: {
      g->GCmemtrav = 0;
      FUNC5(g->gray);
      FUNC8(g);
       if (g->gray == NULL)  /* no more gray objects? */
        g->gcstate = GCSatomic;  /* finish propagate phase */
      return g->GCmemtrav;  /* memory traversed in this step */
    }
    case GCSatomic: {
      lu_mem work;
      FUNC7(g);  /* make sure gray list is empty */
      work = FUNC1(L);  /* work is what was traversed by 'atomic' */
      FUNC3(L);
      g->GCestimate = FUNC4(g);  /* first estimate */;
      return work;
    }
    case GCSswpallgc: {  /* sweep "regular" objects */
      return FUNC11(L, g, GCSswpfinobj, &g->finobj);
    }
    case GCSswpfinobj: {  /* sweep objects with finalizers */
      return FUNC11(L, g, GCSswptobefnz, &g->tobefnz);
    }
    case GCSswptobefnz: {  /* sweep objects to be finalized */
      return FUNC11(L, g, GCSswpend, NULL);
    }
    case GCSswpend: {  /* finish sweeps */
      FUNC6(g, g->mainthread);  /* sweep main thread */
      FUNC2(L, g);
      g->gcstate = GCScallfin;
      return 0;
    }
    case GCScallfin: {  /* call remaining finalizers */
      if (g->tobefnz && g->gckind != KGC_EMERGENCY) {
        int n = FUNC10(L);
        return (n * GCFINALIZECOST);
      }
      else {  /* emergency mode or no more finalizers */
        g->gcstate = GCSpause;  /* finish collection */
        return 0;
      }
    }
    default: FUNC5(0); return 0;
  }
}