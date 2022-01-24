#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int lu_mem ;
struct TYPE_5__ {scalar_t__ gcstate; scalar_t__ GCestimate; int gcmajorinc; } ;
typedef  TYPE_1__ global_State ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GCSpause ; 
 scalar_t__ GCSpropagate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC7 (lua_State *L) {
  global_State *g = FUNC0(L);
  FUNC5(g->gcstate == GCSpropagate);
  if (g->GCestimate == 0) {  /* signal for another major collection? */
    FUNC3(L, 0);  /* perform a full regular collection */
    g->GCestimate = FUNC2(g);  /* update control */
  }
  else {
    lu_mem estimate = g->GCestimate;
    FUNC4(L, FUNC1(GCSpause));  /* run complete (minor) cycle */
    g->gcstate = GCSpropagate;  /* skip restart */
    if (FUNC2(g) > (estimate / 100) * g->gcmajorinc)
      g->GCestimate = 0;  /* signal for a major collection */
    else
      g->GCestimate = estimate;  /* keep estimate from last major coll. */

  }
  FUNC6(g, FUNC2(g));
  FUNC5(g->gcstate == GCSpropagate);
}