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
typedef  int /*<<< orphan*/  global_State ;
struct TYPE_6__ {scalar_t__ traceno; size_t nk; int /*<<< orphan*/  startpt; scalar_t__ nextside; scalar_t__ nextroot; scalar_t__ link; TYPE_1__* ir; } ;
struct TYPE_5__ {scalar_t__ o; } ;
typedef  size_t IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ GCtrace ;

/* Variables and functions */
 scalar_t__ IR_KGC ; 
 size_t REF_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(global_State *g, GCtrace *T)
{
  IRRef ref;
  if (T->traceno == 0) return;
  for (ref = T->nk; ref < REF_TRUE; ref++) {
    IRIns *ir = &T->ir[ref];
    if (ir->o == IR_KGC)
      FUNC0(g, FUNC3(ir));
  }
  if (T->link) FUNC1(g, T->link);
  if (T->nextroot) FUNC1(g, T->nextroot);
  if (T->nextside) FUNC1(g, T->nextside);
  FUNC0(g, FUNC2(T->startpt));
}