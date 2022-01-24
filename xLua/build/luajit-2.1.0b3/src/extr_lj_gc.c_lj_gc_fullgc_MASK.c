#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_5__ {scalar_t__ state; int threshold; int estimate; int pause; scalar_t__ sweepstr; int /*<<< orphan*/  weak; int /*<<< orphan*/  grayagain; int /*<<< orphan*/  gray; int /*<<< orphan*/  root; int /*<<< orphan*/  sweep; } ;
struct TYPE_6__ {int /*<<< orphan*/  vmstate; TYPE_1__ gc; } ;
typedef  TYPE_2__ global_State ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GC ; 
 scalar_t__ GCSatomic ; 
 scalar_t__ GCSfinalize ; 
 scalar_t__ GCSpause ; 
 scalar_t__ GCSsweep ; 
 scalar_t__ GCSsweepstring ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC6(lua_State *L)
{
  global_State *g = FUNC0(L);
  int32_t ostate = g->vmstate;
  FUNC5(g, GC);
  if (g->gc.state <= GCSatomic) {  /* Caught somewhere in the middle. */
    FUNC4(g->gc.sweep, &g->gc.root);  /* Sweep everything (preserving it). */
    FUNC3(g->gc.gray);  /* Reset lists from partial propagation. */
    FUNC3(g->gc.grayagain);
    FUNC3(g->gc.weak);
    g->gc.state = GCSsweepstring;  /* Fast forward to the sweep phase. */
    g->gc.sweepstr = 0;
  }
  while (g->gc.state == GCSsweepstring || g->gc.state == GCSsweep)
    FUNC1(L);  /* Finish sweep. */
  FUNC2(g->gc.state == GCSfinalize || g->gc.state == GCSpause);
  /* Now perform a full GC. */
  g->gc.state = GCSpause;
  do { FUNC1(L); } while (g->gc.state != GCSpause);
  g->gc.threshold = (g->gc.estimate/100) * g->gc.pause;
  g->vmstate = ostate;
}