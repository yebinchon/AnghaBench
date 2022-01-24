#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  freeset; int /*<<< orphan*/  modset; } ;
struct TYPE_9__ {scalar_t__ r; int /*<<< orphan*/  t; } ;
typedef  int /*<<< orphan*/  RegSet ;
typedef  scalar_t__ Reg ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REF_BASE ; 
 scalar_t__ RID_INIT ; 
 int /*<<< orphan*/  XO_MOV ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jit_base ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static RegSet FUNC8(ASMState *as, IRIns *irp, RegSet allow)
{
  IRIns *ir = FUNC0(REF_BASE);
  Reg r = ir->r;
  if (FUNC5(r)) {
    FUNC4(as, r);
    if (FUNC7(as->modset, r) || FUNC3(ir->t))
      ir->r = RID_INIT;  /* No inheritance for modified BASE register. */
    if (irp->r == r) {
      FUNC6(allow, r);  /* Mark same BASE register as coalesced. */
    } else if (FUNC5(irp->r) && FUNC7(as->freeset, irp->r)) {
      FUNC6(allow, irp->r);
      FUNC2(as, XO_MOV, r, irp->r);  /* Move from coalesced parent reg. */
    } else {
      FUNC1(as, r, jit_base);  /* Otherwise reload BASE. */
    }
  }
  return allow;
}