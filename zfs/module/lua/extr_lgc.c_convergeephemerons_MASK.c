#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * ephemeron; } ;
typedef  TYPE_1__ global_State ;
struct TYPE_8__ {int /*<<< orphan*/ * gclist; } ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC3 (global_State *g) {
  int changed;
  do {
    GCObject *w;
    GCObject *next = g->ephemeron;  /* get ephemeron list */
    g->ephemeron = NULL;  /* tables will return to this list when traversed */
    changed = 0;
    while ((w = next) != NULL) {
      next = FUNC0(w)->gclist;
      if (FUNC2(g, FUNC0(w))) {  /* traverse marked some value? */
        FUNC1(g);  /* propagate changes */
        changed = 1;  /* will have to revisit all ephemeron tables */
      }
    }
  } while (changed);
}