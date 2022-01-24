#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_14__ {int flags; scalar_t__ func; } ;
struct TYPE_13__ {scalar_t__ o; int /*<<< orphan*/  op1; int /*<<< orphan*/  op2; } ;
typedef  int RegSet ;
typedef  int /*<<< orphan*/  Reg ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ CCallInfo ;
typedef  int /*<<< orphan*/  ASMState ;
typedef  scalar_t__ ASMFunction ;

/* Variables and functions */
 int CCI_CC_CDECL ; 
 int CCI_CC_MASK ; 
 int CCI_NARGS_MAX ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IR_CARG ; 
 scalar_t__ LJ_32 ; 
 int RSET_GPR ; 
 int RSET_SCRATCH ; 
 int /*<<< orphan*/  XO_GROUP5 ; 
 int /*<<< orphan*/  XOg_CALL ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(ASMState *as, IRIns *ir)
{
  IRRef args[CCI_NARGS_MAX*2];
  CCallInfo ci;
  IRRef func;
  IRIns *irf;
  int32_t spadj = 0;
  ci.flags = FUNC1(as, ir);
  FUNC3(as, ir, &ci, args);
  FUNC6(as, ir, &ci);
#if LJ_32
  /* Have to readjust stack after non-cdecl calls due to callee cleanup. */
  if ((ci.flags & CCI_CC_MASK) != CCI_CC_CDECL)
    spadj = 4 * asm_count_call_slots(as, &ci, args);
#endif
  func = ir->op2; irf = FUNC0(func);
  if (irf->o == IR_CARG) { func = irf->op1; irf = FUNC0(func); }
  ci.func = (ASMFunction)FUNC2(as, irf, func);
  if (!(void *)ci.func) {
    /* Use a (hoistable) non-scratch register for indirect calls. */
    RegSet allow = (RSET_GPR & ~RSET_SCRATCH);
    Reg r = FUNC9(as, func, allow);
    if (LJ_32) FUNC8(as, spadj);  /* Above code may cause restores! */
    FUNC7(as, XO_GROUP5, XOg_CALL, r);
  } else if (LJ_32) {
    FUNC8(as, spadj);
  }
  FUNC5(as, &ci, args);
}