#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_9__ {int /*<<< orphan*/  v; } ;
struct TYPE_13__ {TYPE_1__ uv; } ;
struct TYPE_10__ {int /*<<< orphan*/ * uvptr; } ;
struct TYPE_12__ {TYPE_2__ l; } ;
struct TYPE_11__ {int op2; scalar_t__ o; int /*<<< orphan*/  op1; } ;
typedef  int /*<<< orphan*/  Reg ;
typedef  int /*<<< orphan*/  MRef ;
typedef  TYPE_3__ IRIns ;
typedef  TYPE_4__ GCfunc ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  CC_NE ; 
 int /*<<< orphan*/  GCfuncL ; 
 int /*<<< orphan*/  GCupval ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IR_UREFC ; 
 int /*<<< orphan*/  RSET_GPR ; 
 int /*<<< orphan*/  XO_ARITHib ; 
 int /*<<< orphan*/  XO_LEA ; 
 int /*<<< orphan*/  XO_MOV ; 
 int /*<<< orphan*/  XOg_CMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  closed ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_7__* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tv ; 
 int /*<<< orphan*/  uvptr ; 
 int /*<<< orphan*/  v ; 

__attribute__((used)) static void FUNC12(ASMState *as, IRIns *ir)
{
  /* NYI: Check that UREFO is still open and not aliasing a slot. */
  Reg dest = FUNC10(as, ir, RSET_GPR);
  if (FUNC7(ir->op1)) {
    GCfunc *fn = FUNC6(FUNC0(ir->op1));
    MRef *v = &FUNC5(fn->l.uvptr[(ir->op2 >> 8)])->uv.v;
    FUNC3(as, XO_MOV, dest, v);
  } else {
    Reg uv = FUNC11(as, RSET_GPR);
    Reg func = FUNC9(as, ir->op1, RSET_GPR);
    if (ir->o == IR_UREFC) {
      FUNC4(as, XO_LEA, dest, uv, FUNC8(GCupval, tv));
      FUNC1(as, CC_NE);
      FUNC2(as, 1);
      FUNC4(as, XO_ARITHib, XOg_CMP, uv, FUNC8(GCupval, closed));
    } else {
      FUNC4(as, XO_MOV, dest, uv, FUNC8(GCupval, v));
    }
    FUNC4(as, XO_MOV, uv, func,
	      (int32_t)FUNC8(GCfuncL, uvptr) + 4*(int32_t)(ir->op2 >> 8));
  }
}