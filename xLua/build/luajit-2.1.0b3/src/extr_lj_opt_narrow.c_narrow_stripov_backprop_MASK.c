#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jit_State ;
struct TYPE_9__ {int /*<<< orphan*/  val; } ;
struct TYPE_8__ {scalar_t__ o; int /*<<< orphan*/  op2; int /*<<< orphan*/  op1; } ;
struct TYPE_7__ {int mode; int /*<<< orphan*/ * sp; int /*<<< orphan*/ * maxsp; int /*<<< orphan*/ * J; } ;
typedef  int /*<<< orphan*/  NarrowIns ;
typedef  TYPE_1__ NarrowConv ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_2__ IRIns ;
typedef  TYPE_3__ BPropEntry ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int IRCONV_ANY ; 
 int IRCONV_CONVMASK ; 
 int /*<<< orphan*/  IRCONV_TOBIT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_INT ; 
 scalar_t__ IR_ADD ; 
 scalar_t__ IR_ADDOV ; 
 scalar_t__ IR_MULOV ; 
 scalar_t__ IR_SUBOV ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NARROW_MAX_BACKPROP ; 
 int /*<<< orphan*/  NARROW_REF ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(NarrowConv *nc, IRRef ref, int depth)
{
  jit_State *J = nc->J;
  IRIns *ir = FUNC0(ref);
  if (ir->o == IR_ADDOV || ir->o == IR_SUBOV ||
      (ir->o == IR_MULOV && (nc->mode & IRCONV_CONVMASK) == IRCONV_ANY)) {
    BPropEntry *bp = FUNC3(nc->J, ref, IRCONV_TOBIT);
    if (bp) {
      ref = bp->val;
    } else if (++depth < NARROW_MAX_BACKPROP && nc->sp < nc->maxsp) {
      NarrowIns *savesp = nc->sp;
      FUNC4(nc, ir->op1, depth);
      if (nc->sp < nc->maxsp) {
	FUNC4(nc, ir->op2, depth);
	if (nc->sp < nc->maxsp) {
	  *nc->sp++ = FUNC2(FUNC1(ir->o - IR_ADDOV + IR_ADD, IRT_INT), ref);
	  return;
	}
      }
      nc->sp = savesp;  /* Path too deep, need to backtrack. */
    }
  }
  *nc->sp++ = FUNC2(NARROW_REF, ref);
}