#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ o; scalar_t__ op2; int /*<<< orphan*/  op1; } ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IRFPM_LOG2 ; 
 scalar_t__ IR_FPMATH ; 
 scalar_t__ IR_MUL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(ASMState *as, IRIns *ir)
{
  IRIns *irp = FUNC0(ir->op1);
  if (irp == ir-1 && irp->o == IR_MUL && !FUNC2(irp)) {
    IRIns *irpp = FUNC0(irp->op1);
    if (irpp == ir-2 && irpp->o == IR_FPMATH &&
	irpp->op2 == IRFPM_LOG2 && !FUNC2(irpp)) {
      FUNC1(as, ir, irpp->op1, irp->op2);
      return 1;
    }
  }
  return 0;
}