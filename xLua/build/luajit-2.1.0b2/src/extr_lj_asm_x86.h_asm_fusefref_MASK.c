#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
struct TYPE_11__ {scalar_t__ i; } ;
struct TYPE_8__ {void* base; int /*<<< orphan*/  ofs; void* idx; } ;
struct TYPE_10__ {TYPE_1__ mrm; } ;
struct TYPE_9__ {scalar_t__ o; size_t op2; int /*<<< orphan*/  op1; } ;
typedef  int /*<<< orphan*/  RegSet ;
typedef  TYPE_2__ IRIns ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 TYPE_7__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IR_FLOAD ; 
 scalar_t__ IR_FREF ; 
 void* RID_NONE ; 
 int /*<<< orphan*/ * field_ofs ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(ASMState *as, IRIns *ir, RegSet allow)
{
  FUNC2(ir->o == IR_FLOAD || ir->o == IR_FREF);
  as->mrm.ofs = field_ofs[ir->op2];
  as->mrm.idx = RID_NONE;
  if (FUNC1(ir->op1)) {
    as->mrm.ofs += FUNC0(ir->op1)->i;
    as->mrm.base = RID_NONE;
  } else {
    as->mrm.base = (uint8_t)FUNC3(as, ir->op1, allow);
  }
}