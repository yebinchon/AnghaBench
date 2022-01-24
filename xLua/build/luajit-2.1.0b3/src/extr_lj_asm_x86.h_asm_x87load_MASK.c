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
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_6__ {scalar_t__ o; scalar_t__ op2; int /*<<< orphan*/  op1; } ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IRCONV_NUM_INT ; 
 scalar_t__ IR_CONV ; 
 scalar_t__ IR_KNUM ; 
 int /*<<< orphan*/  RID_ESP ; 
 int /*<<< orphan*/  RSET_EMPTY ; 
 int /*<<< orphan*/  XI_FLD1 ; 
 int /*<<< orphan*/  XI_FLDZ ; 
 int /*<<< orphan*/  XO_FILDd ; 
 int /*<<< orphan*/  XO_FLDq ; 
 int /*<<< orphan*/  XOg_FILDd ; 
 int /*<<< orphan*/  XOg_FLDq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(ASMState *as, IRRef ref)
{
  IRIns *ir = FUNC0(ref);
  if (ir->o == IR_KNUM) {
    cTValue *tv = FUNC6(ir);
    if (FUNC12(tv))  /* Use fldz only for +0. */
      FUNC5(as, XI_FLDZ);
    else if (FUNC11(tv))
      FUNC5(as, XI_FLD1);
    else
      FUNC3(as, XO_FLDq, XOg_FLDq, tv);
  } else if (ir->o == IR_CONV && ir->op2 == IRCONV_NUM_INT && !FUNC10(ir) &&
	     !FUNC7(ir->op1) && FUNC8(as, ir->op1)) {
    IRIns *iri = FUNC0(ir->op1);
    FUNC4(as, XO_FILDd, XOg_FILDd, RID_ESP, FUNC9(as, iri));
  } else {
    FUNC2(as, XO_FLDq, XOg_FLDq, FUNC1(as, ref, RSET_EMPTY));
  }
}