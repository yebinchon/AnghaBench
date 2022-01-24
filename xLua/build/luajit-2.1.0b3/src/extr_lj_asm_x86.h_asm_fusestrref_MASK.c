#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
struct TYPE_9__ {scalar_t__ base; scalar_t__ idx; int ofs; int /*<<< orphan*/  scale; } ;
struct TYPE_11__ {TYPE_1__ mrm; } ;
struct TYPE_10__ {scalar_t__ o; int /*<<< orphan*/  op2; int /*<<< orphan*/  op1; scalar_t__ i; } ;
typedef  int /*<<< orphan*/  RegSet ;
typedef  scalar_t__ Reg ;
typedef  TYPE_2__ IRIns ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IR_ADD ; 
 scalar_t__ IR_STRREF ; 
 int /*<<< orphan*/  LJ_64 ; 
 int /*<<< orphan*/  LJ_GC64 ; 
 scalar_t__ RID_NONE ; 
 int /*<<< orphan*/  XM_SCALE1 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(ASMState *as, IRIns *ir, RegSet allow)
{
  IRIns *irr;
  FUNC2(ir->o == IR_STRREF);
  as->mrm.base = as->mrm.idx = RID_NONE;
  as->mrm.scale = XM_SCALE1;
  as->mrm.ofs = sizeof(GCstr);
  if (!LJ_GC64 && FUNC1(ir->op1)) {
    as->mrm.ofs += FUNC0(ir->op1)->i;
  } else {
    Reg r = FUNC4(as, ir->op1, allow);
    FUNC5(allow, r);
    as->mrm.base = (uint8_t)r;
  }
  irr = FUNC0(ir->op2);
  if (FUNC1(ir->op2)) {
    as->mrm.ofs += irr->i;
  } else {
    Reg r;
    /* Fuse a constant add into the offset, e.g. string.sub(s, i+10). */
    if (!LJ_64 &&  /* Has bad effects with negative index on x64. */
	FUNC3(as, ir->op2) && irr->o == IR_ADD && FUNC1(irr->op2)) {
      as->mrm.ofs += FUNC0(irr->op2)->i;
      r = FUNC4(as, irr->op1, allow);
    } else {
      r = FUNC4(as, ir->op2, allow);
    }
    if (as->mrm.base == RID_NONE)
      as->mrm.base = (uint8_t)r;
    else
      as->mrm.idx = (uint8_t)r;
  }
}