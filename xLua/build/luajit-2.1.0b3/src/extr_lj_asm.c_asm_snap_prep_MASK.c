#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ curins; scalar_t__ snapref; size_t snapno; size_t snaprename; TYPE_2__* T; } ;
struct TYPE_10__ {scalar_t__ op2; int /*<<< orphan*/  op1; } ;
struct TYPE_9__ {size_t nins; TYPE_3__* ir; TYPE_1__* snap; } ;
struct TYPE_8__ {scalar_t__ ref; } ;
typedef  TYPE_3__ IRIns ;
typedef  TYPE_4__ ASMState ;

/* Variables and functions */
 scalar_t__ REF_BIAS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(ASMState *as)
{
  if (as->curins < as->snapref) {
    do {
      if (as->snapno == 0) return;  /* Called by sunk stores before snap #0. */
      as->snapno--;
      as->snapref = as->T->snap[as->snapno].ref;
    } while (as->curins < as->snapref);
    FUNC0(as);
    as->snaprename = as->T->nins;
  } else {
    /* Process any renames above the highwater mark. */
    for (; as->snaprename < as->T->nins; as->snaprename++) {
      IRIns *ir = &as->T->ir[as->snaprename];
      if (FUNC1(as, ir->op1))
	ir->op2 = REF_BIAS-1;  /* Kill rename. */
    }
  }
}