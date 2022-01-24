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
struct TYPE_7__ {scalar_t__ curins; scalar_t__ loopref; } ;
struct TYPE_6__ {scalar_t__ op1; scalar_t__ op2; size_t o; int /*<<< orphan*/  t; int /*<<< orphan*/  r; } ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lj_ir_mode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(ASMState *as, IRIns *ir)
{
  IRIns *irl = FUNC0(ir->op1);
  IRIns *irr = FUNC0(ir->op2);
  FUNC4(FUNC7(irr->r));
  if (!FUNC1(lj_ir_mode[ir->o]))
    return 0;  /* Can't swap non-commutative operations. */
  if (FUNC2(ir->op2))
    return 0;  /* Don't swap constants to the left. */
  if (FUNC6(irl->r))
    return 1;  /* Swap if left already has a register. */
  if (FUNC8(ir->r, irr->r))
    return 1;  /* Swap if dest and right have matching hints. */
  if (as->curins > as->loopref) {  /* In variant part? */
    if (ir->op2 < as->loopref && !FUNC3(irr->t))
      return 0;  /* Keep invariants on the right. */
    if (ir->op1 < as->loopref && !FUNC3(irl->t))
      return 1;  /* Swap invariants to the right. */
  }
  if (FUNC5(irl->o))
    return 1;  /* Swap fusable loads to the right. */
  return 0;  /* Otherwise don't swap. */
}