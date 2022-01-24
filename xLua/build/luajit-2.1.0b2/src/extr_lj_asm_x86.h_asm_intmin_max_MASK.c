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
struct TYPE_5__ {int /*<<< orphan*/  op1; int /*<<< orphan*/  op2; } ;
typedef  int /*<<< orphan*/  Reg ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSET_GPR ; 
 scalar_t__ XO_CMOV ; 
 scalar_t__ XO_CMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(ASMState *as, IRIns *ir, int cc)
{
  Reg right, dest = FUNC4(as, ir, RSET_GPR);
  IRRef lref = ir->op1, rref = ir->op2;
  if (FUNC2(rref)) { lref = rref; rref = ir->op1; }
  right = FUNC3(as, rref, FUNC6(RSET_GPR, dest));
  FUNC1(as, XO_CMOV + (cc<<24), FUNC0(ir, dest), right);
  FUNC1(as, XO_CMP, FUNC0(ir, dest), right);
  FUNC5(as, dest, lref);
}