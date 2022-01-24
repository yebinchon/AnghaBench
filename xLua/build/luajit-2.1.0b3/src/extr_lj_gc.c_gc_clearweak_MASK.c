#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int marked; scalar_t__ asize; scalar_t__ hmask; int /*<<< orphan*/  gclist; int /*<<< orphan*/  node; } ;
struct TYPE_6__ {int /*<<< orphan*/  val; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_1__ Node ;
typedef  scalar_t__ MSize ;
typedef  TYPE_2__ GCtab ;
typedef  int /*<<< orphan*/  GCobj ;

/* Variables and functions */
 int LJ_GC_WEAK ; 
 int LJ_GC_WEAKVAL ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(GCobj *o)
{
  while (o) {
    GCtab *t = FUNC2(o);
    FUNC4((t->marked & LJ_GC_WEAK));
    if ((t->marked & LJ_GC_WEAKVAL)) {
      MSize i, asize = t->asize;
      for (i = 0; i < asize; i++) {
	/* Clear array slot when value is about to be collected. */
	TValue *tv = FUNC0(t, i);
	if (FUNC1(tv, 1))
	  FUNC6(tv);
      }
    }
    if (t->hmask > 0) {
      Node *node = FUNC5(t->node);
      MSize i, hmask = t->hmask;
      for (i = 0; i <= hmask; i++) {
	Node *n = &node[i];
	/* Clear hash slot when key or value is about to be collected. */
	if (!FUNC7(&n->val) && (FUNC1(&n->key, 0) ||
				  FUNC1(&n->val, 1)))
	  FUNC6(&n->val);
      }
    }
    o = FUNC3(t->gclist);
  }
}