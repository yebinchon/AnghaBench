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
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_5__ {int sizearray; int /*<<< orphan*/ * array; int /*<<< orphan*/ * gclist; } ;
typedef  TYPE_1__ Table ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  GCObject ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8 (global_State *g, GCObject *l, GCObject *f) {
  for (; l != f; l = FUNC0(l)->gclist) {
    Table *h = FUNC0(l);
    Node *n, *limit = FUNC2(h);
    int i;
    for (i = 0; i < h->sizearray; i++) {
      TValue *o = &h->array[i];
      if (FUNC4(g, o))  /* value was collected? */
        FUNC6(o);  /* remove value */
    }
    for (n = FUNC1(h, 0); n < limit; n++) {
      if (!FUNC7(FUNC3(n)) && FUNC4(g, FUNC3(n))) {
        FUNC6(FUNC3(n));  /* remove value ... */
        FUNC5(n);  /* and remove entry from table */
      }
    }
  }
}