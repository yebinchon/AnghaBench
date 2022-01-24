#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Reg ;
typedef  int /*<<< orphan*/  IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  CC_NE ; 
 int /*<<< orphan*/  CC_P ; 
 int /*<<< orphan*/  RSET_FPR ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  XO_CVTSI2SD ; 
 int /*<<< orphan*/  XO_CVTTSD2SI ; 
 int /*<<< orphan*/  XO_UCOMISD ; 
 int /*<<< orphan*/  XO_XORPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(ASMState *as, IRIns *ir, Reg left)
{
  Reg tmp = FUNC3(as, FUNC4(RSET_FPR, left));
  Reg dest = FUNC2(as, ir, RSET_GPR);
  FUNC0(as, CC_P);
  FUNC0(as, CC_NE);
  FUNC1(as, XO_UCOMISD, left, tmp);
  FUNC1(as, XO_CVTSI2SD, tmp, dest);
  FUNC1(as, XO_XORPS, tmp, tmp);  /* Avoid partial register stall. */
  FUNC1(as, XO_CVTTSD2SI, dest, left);
  /* Can't fuse since left is needed twice. */
}