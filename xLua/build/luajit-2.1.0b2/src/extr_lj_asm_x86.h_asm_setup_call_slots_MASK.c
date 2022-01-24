#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int evenspill; } ;
struct TYPE_8__ {int /*<<< orphan*/  t; } ;
typedef  int /*<<< orphan*/  Reg ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  CCallInfo ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 int CCI_NARGS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGSP_INIT ; 
 int /*<<< orphan*/  RID_FPRET ; 
 int /*<<< orphan*/  RID_RET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Reg FUNC4(ASMState *as, IRIns *ir, const CCallInfo *ci)
{
  IRRef args[CCI_NARGS_MAX*2];
  int nslots;
  FUNC1(as, ir, ci, args);
  nslots = FUNC2(as, ci, args);
  if (nslots > as->evenspill)  /* Leave room for args in stack slots. */
    as->evenspill = nslots;
#if LJ_64
  return irt_isfp(ir->t) ? REGSP_HINT(RID_FPRET) : REGSP_HINT(RID_RET);
#else
  return FUNC3(ir->t) ? REGSP_INIT : FUNC0(RID_RET);
#endif
}