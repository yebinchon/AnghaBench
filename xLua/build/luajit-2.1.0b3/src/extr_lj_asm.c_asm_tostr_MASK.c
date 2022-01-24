#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  gcsteps; } ;
struct TYPE_10__ {scalar_t__ op2; int /*<<< orphan*/  op1; } ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  CCallInfo ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  ASMREF_L ; 
 int /*<<< orphan*/  ASMREF_TMP1 ; 
 size_t IRCALL_lj_strfmt_char ; 
 size_t IRCALL_lj_strfmt_int ; 
 size_t IRCALL_lj_strfmt_num ; 
 scalar_t__ IRTOSTR_INT ; 
 scalar_t__ IRTOSTR_NUM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lj_ir_callinfo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(ASMState *as, IRIns *ir)
{
  const CCallInfo *ci;
  IRRef args[2];
  args[0] = ASMREF_L;
  as->gcsteps++;
  if (ir->op2 == IRTOSTR_NUM) {
    args[1] = ASMREF_TMP1;  /* cTValue * */
    ci = &lj_ir_callinfo[IRCALL_lj_strfmt_num];
  } else {
    args[1] = ir->op1;  /* int32_t k */
    if (ir->op2 == IRTOSTR_INT)
      ci = &lj_ir_callinfo[IRCALL_lj_strfmt_int];
    else
      ci = &lj_ir_callinfo[IRCALL_lj_strfmt_char];
  }
  FUNC1(as, ir, ci);  /* GCstr * */
  FUNC0(as, ci, args);
  if (ir->op2 == IRTOSTR_NUM)
    FUNC2(as, FUNC3(as, ASMREF_TMP1), ir->op1);
}