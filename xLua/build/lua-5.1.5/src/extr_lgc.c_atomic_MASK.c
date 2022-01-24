#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {scalar_t__ totalbytes; scalar_t__ estimate; int /*<<< orphan*/  gcstate; int /*<<< orphan*/  rootgc; int /*<<< orphan*/ * sweepgc; scalar_t__ sweepstrgc; int /*<<< orphan*/  currentwhite; int /*<<< orphan*/ * weak; int /*<<< orphan*/ * grayagain; int /*<<< orphan*/ * gray; int /*<<< orphan*/  mainthread; } ;
typedef  TYPE_1__ global_State ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GCSsweepstring ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC13 (lua_State *L) {
  global_State *g = FUNC0(L);
  size_t udsize;  /* total size of userdata to be finalized */
  /* remark occasional upvalues of (maybe) dead threads */
  FUNC12(g);
  /* traverse objects cautch by write barrier and by 'remarkupvals' */
  FUNC11(g);
  /* remark weak tables */
  g->gray = g->weak;
  g->weak = NULL;
  FUNC5(!FUNC3(FUNC9(g->mainthread)));
  FUNC7(g, L);  /* mark running thread */
  FUNC6(g);  /* mark basic metatables (again) */
  FUNC11(g);
  /* remark gray again */
  g->gray = g->grayagain;
  g->grayagain = NULL;
  FUNC11(g);
  udsize = FUNC4(L, 0);  /* separate userdata to be finalized */
  FUNC8(g);  /* mark `preserved' userdata */
  udsize += FUNC11(g);  /* remark, to propagate `preserveness' */
  FUNC2(g->weak);  /* remove collected objects from weak tables */
  /* flip current white */
  g->currentwhite = FUNC1(FUNC10(g));
  g->sweepstrgc = 0;
  g->sweepgc = &g->rootgc;
  g->gcstate = GCSsweepstring;
  g->estimate = g->totalbytes - udsize;  /* first estimate */
}