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
struct TYPE_5__ {int modset; int freeset; int /*<<< orphan*/ * cost; } ;
typedef  int RegSet ;
typedef  size_t Reg ;
typedef  TYPE_1__ ASMState ;

/* Variables and functions */
 int RSET_FPR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,size_t) ; 
 size_t FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(ASMState *as, RegSet drop)
{
  RegSet work;
  as->modset |= drop;
#if !LJ_SOFTFP
  work = (drop & ~as->freeset) & RSET_FPR;
  while (work) {
    Reg r = FUNC4(work);
    FUNC1(as, FUNC2(as->cost[r]));
    FUNC3(work, r);
    FUNC0(as);
  }
#endif
  work = (drop & ~as->freeset);
  while (work) {
    Reg r = FUNC4(work);
    FUNC1(as, FUNC2(as->cost[r]));
    FUNC3(work, r);
    FUNC0(as);
  }
}