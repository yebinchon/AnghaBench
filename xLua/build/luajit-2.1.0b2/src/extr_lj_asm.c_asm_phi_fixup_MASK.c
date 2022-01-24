#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_8__ {TYPE_1__* T; int /*<<< orphan*/  ir; int /*<<< orphan*/  J; int /*<<< orphan*/  loopsnapno; int /*<<< orphan*/ * phireg; scalar_t__ phiset; } ;
struct TYPE_7__ {int /*<<< orphan*/  s; scalar_t__ r; int /*<<< orphan*/  t; } ;
struct TYPE_6__ {int /*<<< orphan*/  ir; } ;
typedef  scalar_t__ RegSet ;
typedef  size_t Reg ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_2__ IRIns ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_NIL ; 
 int /*<<< orphan*/  IR_RENAME ; 
 int /*<<< orphan*/  SPS_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,size_t) ; 
 size_t FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(ASMState *as)
{
  RegSet work = as->phiset;
  while (work) {
    Reg r = FUNC8(work);
    IRRef lref = as->phireg[r];
    IRIns *ir = FUNC0(lref);
    if (FUNC3(ir->t)) {
      FUNC2(ir->t);
      /* Left PHI gained a spill slot before the loop? */
      if (FUNC6(ir->s)) {
	IRRef ren;
	FUNC5(as->J, FUNC1(IR_RENAME, IRT_NIL), lref, as->loopsnapno);
	ren = FUNC9(FUNC4(as->J));
	as->ir = as->T->ir;  /* The IR may have been reallocated. */
	FUNC0(ren)->r = (uint8_t)r;
	FUNC0(ren)->s = SPS_NONE;
      }
    }
    FUNC7(work, r);
  }
}