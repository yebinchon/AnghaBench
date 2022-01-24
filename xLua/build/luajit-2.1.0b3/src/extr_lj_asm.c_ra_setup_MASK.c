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
struct TYPE_3__ {int /*<<< orphan*/ * cost; int /*<<< orphan*/  phireg; void* phiset; void* weakset; void* modset; int /*<<< orphan*/  freeset; } ;
typedef  size_t Reg ;
typedef  TYPE_1__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 size_t RID_MAX ; 
 size_t RID_MIN_GPR ; 
 void* RSET_EMPTY ; 
 int /*<<< orphan*/  RSET_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(ASMState *as)
{
  Reg r;
  /* Initially all regs (except the stack pointer) are free for use. */
  as->freeset = RSET_INIT;
  as->modset = RSET_EMPTY;
  as->weakset = RSET_EMPTY;
  as->phiset = RSET_EMPTY;
  FUNC1(as->phireg, 0, sizeof(as->phireg));
  for (r = RID_MIN_GPR; r < RID_MAX; r++)
    as->cost[r] = FUNC0(~0u, 0u);
}