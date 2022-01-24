#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_15__ {scalar_t__ total; scalar_t__ estimate; int /*<<< orphan*/  root; int /*<<< orphan*/  sweep; scalar_t__ currentwhite; int /*<<< orphan*/  weak; int /*<<< orphan*/  grayagain; int /*<<< orphan*/  gray; } ;
struct TYPE_14__ {scalar_t__ marked; } ;
struct TYPE_16__ {TYPE_2__ gc; TYPE_1__ strempty; int /*<<< orphan*/  tmpbuf; } ;
typedef  TYPE_3__ global_State ;
typedef  scalar_t__ GCSize ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(global_State *g, lua_State *L)
{
  size_t udsize;

  FUNC3(g);  /* Need to remark open upvalues (the thread may be dead). */
  FUNC5(g);  /* Propagate any left-overs. */

  FUNC16(g->gc.gray, g->gc.weak);  /* Empty the list of weak tables. */
  FUNC15(g->gc.weak);
  FUNC11(!FUNC8(FUNC13(FUNC12(g))));
  FUNC4(g, L);  /* Mark running thread. */
  FUNC6(g);  /* Traverse current trace. */
  FUNC1(g);  /* Mark GC roots (again). */
  FUNC5(g);  /* Propagate all of the above. */

  FUNC16(g->gc.gray, g->gc.grayagain);  /* Empty the 2nd chance list. */
  FUNC15(g->gc.grayagain);
  FUNC5(g);  /* Propagate it. */

  udsize = FUNC10(g, 0);  /* Separate userdata to be finalized. */
  FUNC2(g);  /* Mark them. */
  udsize += FUNC5(g);  /* And propagate the marks. */

  /* All marking done, clear weak tables. */
  FUNC0(FUNC7(g->gc.weak));

  FUNC9(L, &g->tmpbuf);  /* Shrink temp buffer. */

  /* Prepare for sweep phase. */
  g->gc.currentwhite = (uint8_t)FUNC14(g);  /* Flip current white. */
  g->strempty.marked = g->gc.currentwhite;
  FUNC17(g->gc.sweep, &g->gc.root);
  g->gc.estimate = g->gc.total - (GCSize)udsize;  /* Initial estimate. */
}