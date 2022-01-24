#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t exitno; scalar_t__* param; scalar_t__ state; int /*<<< orphan*/  L; int /*<<< orphan*/  parent; } ;
typedef  TYPE_1__ jit_State ;
struct TYPE_12__ {int hookmask; } ;
struct TYPE_11__ {TYPE_2__* snap; } ;
struct TYPE_10__ {scalar_t__ count; } ;
typedef  TYPE_2__ SnapShot ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 int HOOK_GC ; 
 int HOOK_VMEVENT ; 
 TYPE_7__* FUNC0 (TYPE_1__*) ; 
 size_t JIT_P_hotexit ; 
 scalar_t__ LJ_TRACE_IDLE ; 
 scalar_t__ LJ_TRACE_START ; 
 scalar_t__ SNAPCOUNT_DONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_3__* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(jit_State *J, const BCIns *pc)
{
  SnapShot *snap = &FUNC5(J, J->parent)->snap[J->exitno];
  if (!(FUNC0(J)->hookmask & (HOOK_GC|HOOK_VMEVENT)) &&
      FUNC2(FUNC1(J->L)) &&
      snap->count != SNAPCOUNT_DONE &&
      ++snap->count >= J->param[JIT_P_hotexit]) {
    FUNC4(J->state == LJ_TRACE_IDLE);
    /* J->parent is non-zero for a side trace. */
    J->state = LJ_TRACE_START;
    FUNC3(J, pc);
  }
}