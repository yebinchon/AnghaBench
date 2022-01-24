#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * base; scalar_t__ baseslot; } ;
typedef  TYPE_1__ jit_State ;
typedef  size_t int32_t ;
typedef  int /*<<< orphan*/  TRef ;
typedef  int /*<<< orphan*/  IRType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IR_SLOAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static TRef FUNC2(jit_State *J, int32_t slot, IRType t, int mode)
{
  /* Caller may set IRT_GUARD in t. */
  TRef ref = FUNC1(FUNC0(IR_SLOAD, t), (int32_t)J->baseslot+slot, mode);
  J->base[slot] = ref;
  return ref;
}