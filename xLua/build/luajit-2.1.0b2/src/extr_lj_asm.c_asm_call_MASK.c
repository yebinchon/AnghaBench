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
struct TYPE_5__ {size_t op2; } ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  CCallInfo ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int CCI_NARGS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * lj_ir_callinfo ; 

__attribute__((used)) static void FUNC3(ASMState *as, IRIns *ir)
{
  IRRef args[CCI_NARGS_MAX];
  const CCallInfo *ci = &lj_ir_callinfo[ir->op2];
  FUNC0(as, ir, ci, args);
  FUNC2(as, ir, ci);
  FUNC1(as, ci, args);
}