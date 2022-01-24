#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  op2; int /*<<< orphan*/  op1; int /*<<< orphan*/  r; } ;
typedef  int RegSet ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RID_EAX ; 
 int /*<<< orphan*/  RID_XMM0 ; 
 scalar_t__ RID_XMM1 ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lj_vm_powi_sse ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(ASMState *as, IRIns *ir)
{
  /* The modified regs must match with the *.dasc implementation. */
  RegSet drop = FUNC1(RID_XMM0, RID_XMM1+1)|FUNC0(RID_EAX);
  if (FUNC5(ir->r))
    FUNC7(drop, ir->r);  /* Dest reg handled below. */
  FUNC4(as, drop);
  FUNC3(as, ir, RID_XMM0);
  FUNC2(as, lj_vm_powi_sse);
  FUNC6(as, RID_XMM0, ir->op1);
  FUNC6(as, RID_EAX, ir->op2);
}