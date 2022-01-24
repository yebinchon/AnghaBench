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
struct TYPE_10__ {int op1; int op2; } ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  CCallInfo ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  ASMREF_L ; 
 int /*<<< orphan*/  ASMREF_TMP1 ; 
 size_t IRCALL_lj_tab_new1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * lj_ir_callinfo ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(ASMState *as, IRIns *ir)
{
  const CCallInfo *ci = &lj_ir_callinfo[IRCALL_lj_tab_new1];
  IRRef args[2];
  args[0] = ASMREF_L;     /* lua_State *L    */
  args[1] = ASMREF_TMP1;  /* uint32_t ahsize */
  as->gcsteps++;
  FUNC1(as, ir, ci);  /* GCtab * */
  FUNC0(as, ci, args);
  FUNC2(as, ir->op1 | (ir->op2 << 24), FUNC3(as, ASMREF_TMP1));
}