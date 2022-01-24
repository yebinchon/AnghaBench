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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_3__ {int /*<<< orphan*/  op2; int /*<<< orphan*/  op1; int /*<<< orphan*/  r; int /*<<< orphan*/  s; } ;
typedef  int /*<<< orphan*/  Reg ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  RID_ESP ; 
 int /*<<< orphan*/  XI_FPOP1 ; 
 int /*<<< orphan*/  XI_FSCALE ; 
 int /*<<< orphan*/  XO_FSTPq ; 
 int /*<<< orphan*/  XO_MOVSD ; 
 int /*<<< orphan*/  XOg_FSTPq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(ASMState *as, IRIns *ir)
{
  int32_t ofs = FUNC6(ir->s);  /* Use spill slot or temp slots. */
  Reg dest = ir->r;
  if (FUNC4(dest)) {
    FUNC3(as, dest);
    FUNC5(as, dest);
    FUNC1(as, XO_MOVSD, dest, RID_ESP, ofs);
  }
  FUNC1(as, XO_FSTPq, XOg_FSTPq, RID_ESP, ofs);
  FUNC2(as, XI_FPOP1);
  FUNC2(as, XI_FSCALE);
  FUNC0(as, ir->op1);
  FUNC0(as, ir->op2);
}