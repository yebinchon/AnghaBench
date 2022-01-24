#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_10__ {TYPE_4__* ir; } ;
struct TYPE_12__ {int* chain; TYPE_1__ cur; } ;
typedef  TYPE_3__ jit_State ;
struct TYPE_11__ {scalar_t__ irt; } ;
struct TYPE_13__ {int prev; size_t o; TYPE_2__ t; int /*<<< orphan*/  gcr; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  scalar_t__ IRType ;
typedef  int IRRef1 ;
typedef  int IRRef ;
typedef  TYPE_4__ IRIns ;
typedef  int /*<<< orphan*/  GCobj ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int) ; 
 size_t IR_KGC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  LJ_GC64 ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

TRef FUNC8(jit_State *J, GCobj *o, IRType t)
{
  IRIns *ir, *cir = J->cur.ir;
  IRRef ref;
  FUNC6(!LJ_GC64);  /* TODO_GC64: major changes required. */
  FUNC6(!FUNC5(FUNC1(J), o));
  for (ref = J->chain[IR_KGC]; ref; ref = cir[ref].prev)
    if (FUNC3(&cir[ref]) == o)
      goto found;
  ref = FUNC4(J);
  ir = FUNC0(ref);
  /* NOBARRIER: Current trace is a GC root. */
  FUNC7(ir->gcr, o);
  ir->t.irt = (uint8_t)t;
  ir->o = IR_KGC;
  ir->prev = J->chain[IR_KGC];
  J->chain[IR_KGC] = (IRRef1)ref;
found:
  return FUNC2(ref, t);
}