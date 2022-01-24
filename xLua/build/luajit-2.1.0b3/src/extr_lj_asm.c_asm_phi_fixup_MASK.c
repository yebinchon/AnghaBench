#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  loopsnapno; int /*<<< orphan*/ * phireg; scalar_t__ phiset; } ;
struct TYPE_6__ {int /*<<< orphan*/  s; int /*<<< orphan*/  t; } ;
typedef  scalar_t__ RegSet ;
typedef  size_t Reg ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,size_t) ; 
 size_t FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(ASMState *as)
{
  RegSet work = as->phiset;
  while (work) {
    Reg r = FUNC6(work);
    IRRef lref = as->phireg[r];
    IRIns *ir = FUNC0(lref);
    if (FUNC2(ir->t)) {
      FUNC1(ir->t);
      /* Left PHI gained a spill slot before the loop? */
      if (FUNC4(ir->s)) {
	FUNC3(as, r, lref, as->loopsnapno);
      }
    }
    FUNC5(work, r);
  }
}