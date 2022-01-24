#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  l_registry; int /*<<< orphan*/  mainthread; int /*<<< orphan*/ * ephemeron; int /*<<< orphan*/  allweak; int /*<<< orphan*/  weak; int /*<<< orphan*/ * grayagain; int /*<<< orphan*/  gray; } ;
typedef  TYPE_1__ global_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 (global_State *g) {
  g->gray = *(g->grayagain = NULL);
  g->weak = g->allweak = *(g->ephemeron = NULL);
  FUNC2(g, g->mainthread);
  FUNC3(g, &g->l_registry);
  FUNC1(g);
  FUNC0(g);  /* mark any finalizing object left from previous cycle */
}