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
struct TYPE_5__ {int freeset; int /*<<< orphan*/ * cost; } ;
typedef  int RegSet ;
typedef  size_t Reg ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ ASMState ;

/* Variables and functions */
 int RSET_FPR ; 
 int RSET_GPR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,size_t) ; 
 size_t FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(ASMState *as)
{
  RegSet work;
#if !LJ_SOFTFP
  work = ~as->freeset & RSET_FPR;
  while (work) {
    Reg r = FUNC6(work);
    IRRef ref = FUNC4(as->cost[r]);
    if (FUNC1(ref) && FUNC2(ref)) {
      FUNC3(as, ref);
      FUNC0(as);
    }
    FUNC5(work, r);
  }
#endif
  work = ~as->freeset & RSET_GPR;
  while (work) {
    Reg r = FUNC6(work);
    IRRef ref = FUNC4(as->cost[r]);
    if (FUNC1(ref) && FUNC2(ref)) {
      FUNC3(as, ref);
      FUNC0(as);
    }
    FUNC5(work, r);
  }
}