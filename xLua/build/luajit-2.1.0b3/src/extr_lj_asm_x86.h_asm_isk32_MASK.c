#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_9__ {scalar_t__ u64; } ;
struct TYPE_8__ {scalar_t__ u64; } ;
struct TYPE_7__ {scalar_t__ o; scalar_t__ i; int /*<<< orphan*/  t; } ;
typedef  int /*<<< orphan*/  IRRef ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IR_KINT64 ; 
 scalar_t__ IR_KNULL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(ASMState *as, IRRef ref, int32_t *k)
{
  if (FUNC4(ref)) {
    IRIns *ir = FUNC0(ref);
#if LJ_GC64
    if (ir->o == IR_KNULL || !irt_is64(ir->t)) {
      *k = ir->i;
      return 1;
    } else if (checki32((int64_t)ir_k64(ir)->u64)) {
      *k = (int32_t)ir_k64(ir)->u64;
      return 1;
    }
#else
    if (ir->o != IR_KINT64) {
      *k = ir->i;
      return 1;
    } else if (FUNC1((int64_t)FUNC3(ir)->u64)) {
      *k = (int32_t)FUNC3(ir)->u64;
      return 1;
    }
#endif
  }
  return 0;
}