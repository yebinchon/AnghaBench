#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_8__ {int /*<<< orphan*/  ofs; } ;
struct TYPE_10__ {TYPE_1__ mrm; } ;
struct TYPE_9__ {scalar_t__ o; scalar_t__ op1; scalar_t__ op2; int /*<<< orphan*/  i; } ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_2__ IRIns ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  TYPE_3__ ASMState ;

/* Variables and functions */
 TYPE_2__* FUNC0 (scalar_t__) ; 
 scalar_t__ IRFL_TAB_ARRAY ; 
 scalar_t__ IR_ADD ; 
 scalar_t__ IR_FLOAD ; 
 int /*<<< orphan*/  IR_NEWREF ; 
 scalar_t__ IR_TNEW ; 
 scalar_t__ LJ_MAX_COLOSIZE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static IRRef FUNC5(ASMState *as, IRRef ref)
{
  IRIns *irb = FUNC0(ref);
  as->mrm.ofs = 0;
  if (irb->o == IR_FLOAD) {
    IRIns *ira = FUNC0(irb->op1);
    FUNC2(irb->op2 == IRFL_TAB_ARRAY);
    /* We can avoid the FLOAD of t->array for colocated arrays. */
    if (ira->o == IR_TNEW && ira->op1 <= LJ_MAX_COLOSIZE &&
	!FUNC3(as) && FUNC4(as, irb->op1, IR_NEWREF, 1)) {
      as->mrm.ofs = (int32_t)sizeof(GCtab);  /* Ofs to colocated array. */
      return irb->op1;  /* Table obj. */
    }
  } else if (irb->o == IR_ADD && FUNC1(irb->op2)) {
    /* Fuse base offset (vararg load). */
    as->mrm.ofs = FUNC0(irb->op2)->i;
    return irb->op1;
  }
  return ref;  /* Otherwise use the given array base. */
}