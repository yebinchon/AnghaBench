#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ l_mem ;
struct TYPE_15__ {int gcfinnum; scalar_t__ GCmemtrav; int /*<<< orphan*/  currentwhite; int /*<<< orphan*/ * allweak; int /*<<< orphan*/ * weak; int /*<<< orphan*/ * ephemeron; int /*<<< orphan*/ * gray; int /*<<< orphan*/  l_registry; int /*<<< orphan*/  gcstate; int /*<<< orphan*/  mainthread; int /*<<< orphan*/ * grayagain; } ;
typedef  TYPE_1__ global_State ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GCSinsideatomic ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static l_mem FUNC16 (lua_State *L) {
  global_State *g = FUNC0(L);
  l_mem work;
  GCObject *origweak, *origall;
  GCObject *grayagain = g->grayagain;  /* save original list */
  FUNC7(g->ephemeron == NULL && g->weak == NULL);
  FUNC7(!FUNC5(g->mainthread));
  g->gcstate = GCSinsideatomic;
  g->GCmemtrav = 0;  /* start counting work */
  FUNC10(g, L);  /* mark running thread */
  /* registry and global metatables may be changed by API */
  FUNC11(g, &g->l_registry);
  FUNC9(g);  /* mark global metatables */
  /* remark occasional upvalues of (maybe) dead threads */
  FUNC14(g);
  FUNC13(g);  /* propagate changes */
  work = g->GCmemtrav;  /* stop counting (do not recount 'grayagain') */
  g->gray = grayagain;
  FUNC13(g);  /* traverse 'grayagain' list */
  g->GCmemtrav = 0;  /* restart counting */
  FUNC4(g);
  /* at this point, all strongly accessible objects are marked. */
  /* Clear values from weak tables, before checking finalizers */
  FUNC3(g, g->weak, NULL);
  FUNC3(g, g->allweak, NULL);
  origweak = g->weak; origall = g->allweak;
  work += g->GCmemtrav;  /* stop counting (objects being finalized) */
  FUNC15(g, 0);  /* separate objects to be finalized */
  g->gcfinnum = 1;  /* there may be objects to be finalized */
  FUNC8(g);  /* mark objects that will be finalized */
  FUNC13(g);  /* remark, to propagate 'resurrection' */
  g->GCmemtrav = 0;  /* restart counting */
  FUNC4(g);
  /* at this point, all resurrected objects are marked. */
  /* remove dead objects from weak tables */
  FUNC2(g, g->ephemeron, NULL);  /* clear keys from all ephemeron tables */
  FUNC2(g, g->allweak, NULL);  /* clear keys from all 'allweak' tables */
  /* clear values from resurrected weak tables */
  FUNC3(g, g->weak, origweak);
  FUNC3(g, g->allweak, origall);
  FUNC6(g);
  g->currentwhite = FUNC1(FUNC12(g));  /* flip current white */
  work += g->GCmemtrav;  /* complete counting */
  return work;  /* estimate of memory marked by 'atomic' */
}