#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {scalar_t__ op1; scalar_t__ o; scalar_t__ op2; } ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ CCallInfo ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  ASMREF_L ; 
 int CCI_L ; 
 int CCI_NARGS_MAX ; 
 int FUNC0 (TYPE_2__ const*) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 scalar_t__ IR_CARG ; 
 scalar_t__ REF_NIL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(ASMState *as, IRIns *ir,
			    const CCallInfo *ci, IRRef *args)
{
  uint32_t n = FUNC0(ci);
  FUNC2(n <= CCI_NARGS_MAX*2);  /* Account for split args. */
  if ((ci->flags & CCI_L)) { *args++ = ASMREF_L; n--; }
  while (n-- > 1) {
    ir = FUNC1(ir->op1);
    FUNC2(ir->o == IR_CARG);
    args[n] = ir->op2 == REF_NIL ? 0 : ir->op2;
  }
  args[0] = ir->op1 == REF_NIL ? 0 : ir->op1;
  FUNC2(FUNC1(ir->op1)->o != IR_CARG);
}