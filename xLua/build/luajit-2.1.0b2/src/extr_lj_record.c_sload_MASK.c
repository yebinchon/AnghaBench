#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * base; scalar_t__ baseslot; TYPE_1__* L; } ;
typedef  TYPE_2__ jit_State ;
typedef  size_t int32_t ;
struct TYPE_4__ {int /*<<< orphan*/ * base; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  int /*<<< orphan*/  IRType ;

/* Variables and functions */
 int /*<<< orphan*/  IRSLOAD_TYPECHECK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IR_SLOAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static TRef FUNC5(jit_State *J, int32_t slot)
{
  IRType t = FUNC4(&J->L->base[slot]);
  TRef ref = FUNC2(FUNC0(IR_SLOAD, t), (int32_t)J->baseslot+slot,
			IRSLOAD_TYPECHECK);
  if (FUNC3(t)) ref = FUNC1(t);  /* Canonicalize primitive refs. */
  J->base[slot] = ref;
  return ref;
}