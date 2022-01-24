#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_14__ {int /*<<< orphan*/  t; } ;
struct TYPE_13__ {scalar_t__ topslot; } ;
struct TYPE_12__ {int /*<<< orphan*/  op2; } ;
typedef  int /*<<< orphan*/  Reg ;
typedef  TYPE_1__ IRIns ;
typedef  scalar_t__ BCReg ;
typedef  int /*<<< orphan*/  BCIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  CC_NE ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LJ_FR2 ; 
 int /*<<< orphan*/  REF_BASE ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOg_CMP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jit_base ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(ASMState *as, IRIns *ir)
{
  Reg base = FUNC10(as, REF_BASE, RSET_GPR);
  void *pc = FUNC7(FUNC0(ir->op2));
  int32_t delta = 1+LJ_FR2+FUNC3(*((const BCIns *)pc - 1));
  as->topslot -= (BCReg)delta;
  if ((int32_t)as->topslot < 0) as->topslot = 0;
  FUNC8(FUNC0(REF_BASE)->t);  /* Children must not coalesce with BASE reg. */
  FUNC6(as, base, jit_base);
  FUNC4(as, base, -8*delta);
  FUNC2(as, CC_NE);
  FUNC5(as, FUNC1(XOg_CMP), base, -4, FUNC9(pc));
}