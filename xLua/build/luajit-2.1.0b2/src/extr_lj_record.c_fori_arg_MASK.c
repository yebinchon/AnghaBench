#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__* base; } ;
typedef  TYPE_1__ jit_State ;
typedef  scalar_t__ TRef ;
typedef  int /*<<< orphan*/  IRType ;
typedef  size_t BCReg ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,size_t,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static TRef FUNC2(jit_State *J, const BCIns *fori, BCReg slot,
		     IRType t, int mode)
{
  TRef tr = J->base[slot];
  if (!tr) {
    tr = FUNC0(J, fori, slot, t);
    if (!tr)
      tr = FUNC1(J, slot, t, mode);
  }
  return tr;
}