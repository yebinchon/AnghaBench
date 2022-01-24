#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int int32_t ;
struct TYPE_6__ {int evenspill; int oddspill; int /*<<< orphan*/  J; TYPE_1__* ir; } ;
struct TYPE_5__ {int s; int /*<<< orphan*/  t; } ;
typedef  TYPE_1__ IRIns ;
typedef  TYPE_2__ ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_TRERR_SPILLOV ; 
 int REF_TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int32_t FUNC5(ASMState *as, IRIns *ir)
{
  int32_t slot = ir->s;
  FUNC2(ir >= as->ir + REF_TRUE);
  if (!FUNC3(slot)) {
    if (FUNC0(ir->t)) {
      slot = as->evenspill;
      as->evenspill += 2;
    } else if (as->oddspill) {
      slot = as->oddspill;
      as->oddspill = 0;
    } else {
      slot = as->evenspill;
      as->oddspill = slot+1;
      as->evenspill += 2;
    }
    if (as->evenspill > 256)
      FUNC1(as->J, LJ_TRERR_SPILLOV);
    ir->s = (uint8_t)slot;
  }
  return FUNC4(slot);
}