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
typedef  int Reg ;
typedef  int /*<<< orphan*/  IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  CC_NE ; 
 int REX_64 ; 
 int RID_NONE ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  XO_ARITHi8 ; 
 int /*<<< orphan*/  XO_MOV ; 
 int XOg_CMP ; 
 int XOg_SAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static Reg FUNC8(ASMState *as, IRIns *ir, int typecheck)
{
  if (FUNC6(ir) || typecheck) {
    Reg dest = FUNC4(as, ir, RSET_GPR);
    if (typecheck) {
      Reg tmp = FUNC5(as, FUNC7(RSET_GPR, dest));
      FUNC0(as, CC_NE);
      FUNC1(as, -2);
      FUNC2(as, XO_ARITHi8, XOg_CMP, tmp);
      FUNC3(as, XOg_SAR|REX_64, tmp, 47);
      FUNC2(as, XO_MOV, tmp|REX_64, dest);
    }
    return dest;
  } else {
    return RID_NONE;
  }
}