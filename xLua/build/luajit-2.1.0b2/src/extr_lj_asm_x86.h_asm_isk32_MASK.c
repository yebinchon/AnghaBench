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
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_6__ {scalar_t__ u64; } ;
struct TYPE_5__ {scalar_t__ o; scalar_t__ i; } ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IR_KINT64 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(ASMState *as, IRRef ref, int32_t *k)
{
  if (FUNC3(ref)) {
    IRIns *ir = FUNC0(ref);
    if (ir->o != IR_KINT64) {
      *k = ir->i;
      return 1;
    } else if (FUNC1((int64_t)FUNC2(ir)->u64)) {
      *k = (int32_t)FUNC2(ir)->u64;
      return 1;
    }
  }
  return 0;
}