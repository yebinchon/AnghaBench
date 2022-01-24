#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
struct TYPE_12__ {int ofs; void* base; void* idx; void* scale; } ;
struct TYPE_14__ {TYPE_1__ mrm; } ;
struct TYPE_13__ {scalar_t__ o; int i; scalar_t__ op2; scalar_t__ op1; int /*<<< orphan*/  r; } ;
typedef  int /*<<< orphan*/  RegSet ;
typedef  scalar_t__ Reg ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_2__ IRIns ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 TYPE_2__* FUNC0 (scalar_t__) ; 
 scalar_t__ IR_ADD ; 
 scalar_t__ IR_BSHL ; 
 scalar_t__ IR_KKPTR ; 
 scalar_t__ IR_KPTR ; 
 scalar_t__ IR_STRREF ; 
 void* RID_NONE ; 
 void* XM_SCALE1 ; 
 void* XM_SCALE2 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*,scalar_t__,int*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(ASMState *as, IRRef ref, RegSet allow)
{
  IRIns *ir = FUNC0(ref);
  as->mrm.idx = RID_NONE;
  if (ir->o == IR_KPTR || ir->o == IR_KKPTR) {
    as->mrm.ofs = ir->i;
    as->mrm.base = RID_NONE;
  } else if (ir->o == IR_STRREF) {
    FUNC1(as, ir, allow);
  } else {
    as->mrm.ofs = 0;
    if (FUNC3(as, ir) && ir->o == IR_ADD && FUNC6(ir->r)) {
      /* Gather (base+idx*sz)+ofs as emitted by cdata ptr/array indexing. */
      IRIns *irx;
      IRRef idx;
      Reg r;
      if (FUNC2(as, ir->op2, &as->mrm.ofs)) {  /* Recognize x+ofs. */
	ref = ir->op1;
	ir = FUNC0(ref);
	if (!(ir->o == IR_ADD && FUNC3(as, ir) && FUNC6(ir->r)))
	  goto noadd;
      }
      as->mrm.scale = XM_SCALE1;
      idx = ir->op1;
      ref = ir->op2;
      irx = FUNC0(idx);
      if (!(irx->o == IR_BSHL || irx->o == IR_ADD)) {  /* Try other operand. */
	idx = ir->op2;
	ref = ir->op1;
	irx = FUNC0(idx);
      }
      if (FUNC3(as, irx) && FUNC6(irx->r)) {
	if (irx->o == IR_BSHL && FUNC4(irx->op2) && FUNC0(irx->op2)->i <= 3) {
	  /* Recognize idx<<b with b = 0-3, corresponding to sz = (1),2,4,8. */
	  idx = irx->op1;
	  as->mrm.scale = (uint8_t)(FUNC0(irx->op2)->i << 6);
	} else if (irx->o == IR_ADD && irx->op1 == irx->op2) {
	  /* FOLD does idx*2 ==> idx<<1 ==> idx+idx. */
	  idx = irx->op1;
	  as->mrm.scale = XM_SCALE2;
	}
      }
      r = FUNC5(as, idx, allow);
      FUNC7(allow, r);
      as->mrm.idx = (uint8_t)r;
    }
  noadd:
    as->mrm.base = (uint8_t)FUNC5(as, ref, allow);
  }
}