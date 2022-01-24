#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_6__ {scalar_t__ gct; int /*<<< orphan*/  metatable; } ;
struct TYPE_7__ {TYPE_1__ gch; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  TYPE_2__ GCobj ;

/* Variables and functions */
 scalar_t__ LJ_FR2 ; 
 int /*<<< orphan*/  MM_eq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lj_cont_condf ; 
 int /*<<< orphan*/  lj_cont_condt ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

TValue *FUNC8(lua_State *L, GCobj *o1, GCobj *o2, int ne)
{
  /* Field metatable must be at same offset for GCtab and GCudata! */
  cTValue *mo = FUNC2(L, FUNC7(o1->gch.metatable), MM_eq);
  if (mo) {
    TValue *top;
    uint32_t it;
    if (FUNC7(o1->gch.metatable) != FUNC7(o2->gch.metatable)) {
      cTValue *mo2 = FUNC2(L, FUNC7(o2->gch.metatable), MM_eq);
      if (mo2 == NULL || !FUNC3(mo, mo2))
	return (TValue *)(intptr_t)ne;
    }
    top = FUNC1(L);
    FUNC4(top++, ne ? lj_cont_condf : lj_cont_condt);
    if (LJ_FR2) FUNC6(top++);
    FUNC0(L, top++, mo);
    if (LJ_FR2) FUNC6(top++);
    it = ~(uint32_t)o1->gch.gct;
    FUNC5(L, top, o1, it);
    FUNC5(L, top+1, o2, it);
    return top;  /* Trigger metamethod call. */
  }
  return (TValue *)(intptr_t)ne;
}