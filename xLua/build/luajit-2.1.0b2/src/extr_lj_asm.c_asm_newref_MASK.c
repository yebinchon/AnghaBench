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
struct TYPE_4__ {scalar_t__ r; int /*<<< orphan*/  op2; int /*<<< orphan*/  op1; } ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  CCallInfo ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  ASMREF_L ; 
 int /*<<< orphan*/  ASMREF_TMP1 ; 
 size_t IRCALL_lj_tab_newkey ; 
 scalar_t__ RID_SINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * lj_ir_callinfo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(ASMState *as, IRIns *ir)
{
  const CCallInfo *ci = &lj_ir_callinfo[IRCALL_lj_tab_newkey];
  IRRef args[3];
  if (ir->r == RID_SINK)
    return;
  args[0] = ASMREF_L;     /* lua_State *L */
  args[1] = ir->op1;      /* GCtab *t     */
  args[2] = ASMREF_TMP1;  /* cTValue *key */
  FUNC1(as, ir, ci);  /* TValue * */
  FUNC0(as, ci, args);
  FUNC2(as, FUNC3(as, ASMREF_TMP1), ir->op2);
}