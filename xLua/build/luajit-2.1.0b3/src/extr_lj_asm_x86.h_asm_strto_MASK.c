#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  s; int /*<<< orphan*/  op1; int /*<<< orphan*/  r; } ;
typedef  int RegSet ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  CCallInfo ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  ASMREF_TMP1 ; 
 int /*<<< orphan*/  CC_E ; 
 size_t IRCALL_lj_strscan_num ; 
 int REX_64 ; 
 int /*<<< orphan*/  RID_ESP ; 
 int /*<<< orphan*/  RID_RET ; 
 int RSET_FPR ; 
 int RSET_SCRATCH ; 
 int /*<<< orphan*/  XO_LEA ; 
 int /*<<< orphan*/  XO_TEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lj_ir_callinfo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(ASMState *as, IRIns *ir)
{
  /* Force a spill slot for the destination register (if any). */
  const CCallInfo *ci = &lj_ir_callinfo[IRCALL_lj_strscan_num];
  IRRef args[2];
  RegSet drop = RSET_SCRATCH;
  if ((drop & RSET_FPR) != RSET_FPR && FUNC5(ir->r))
    FUNC7(drop, ir->r);  /* WIN64 doesn't spill all FPRs. */
  FUNC4(as, drop);
  FUNC1(as, CC_E);
  FUNC3(as, XO_TEST, RID_RET, RID_RET);  /* Test return status. */
  args[0] = ir->op1;      /* GCstr *str */
  args[1] = ASMREF_TMP1;  /* TValue *n  */
  FUNC0(as, ci, args);
  /* Store the result to the spill slot or temp slots. */
  FUNC2(as, XO_LEA, FUNC6(as, ASMREF_TMP1)|REX_64,
	    RID_ESP, FUNC8(ir->s));
}