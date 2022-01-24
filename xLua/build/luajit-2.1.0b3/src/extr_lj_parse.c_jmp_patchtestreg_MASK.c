#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ins; } ;
struct TYPE_4__ {TYPE_2__* bcbase; } ;
typedef  TYPE_1__ FuncState ;
typedef  scalar_t__ BCReg ;
typedef  int BCPos ;
typedef  scalar_t__ BCOp ;
typedef  TYPE_2__ BCInsLine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ BC_ISFC ; 
 scalar_t__ BC_IST ; 
 scalar_t__ BC_ISTC ; 
 int /*<<< orphan*/  BC_JMP ; 
 scalar_t__ NO_REG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC6(FuncState *fs, BCPos pc, BCReg reg)
{
  BCInsLine *ilp = &fs->bcbase[pc >= 1 ? pc-1 : pc];
  BCOp op = FUNC3(ilp->ins);
  if (op == BC_ISTC || op == BC_ISFC) {
    if (reg != NO_REG && reg != FUNC2(ilp->ins)) {
      FUNC4(&ilp->ins, reg);
    } else {  /* Nothing to store or already in the right register. */
      FUNC5(&ilp->ins, op+(BC_IST-BC_ISTC));
      FUNC4(&ilp->ins, 0);
    }
  } else if (FUNC1(ilp->ins) == NO_REG) {
    if (reg == NO_REG) {
      ilp->ins = FUNC0(BC_JMP, FUNC1(fs->bcbase[pc].ins), 0);
    } else {
      FUNC4(&ilp->ins, reg);
      if (reg >= FUNC1(ilp[1].ins))
	FUNC4(&ilp[1].ins, reg+1);
    }
  } else {
    return 0;  /* Cannot patch other instructions. */
  }
  return 1;
}