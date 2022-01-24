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
struct TYPE_5__ {int /*<<< orphan*/  top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  lua_Number ;
typedef  size_t int32_t ;
struct TYPE_6__ {int /*<<< orphan*/ * fpr; scalar_t__* gpr; } ;
typedef  TYPE_2__ ExitState ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t RID_NUM_FPR ; 
 size_t RID_NUM_GPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(lua_State *L, ExitState *ex)
{
  int32_t i;
  FUNC1(L->top++, RID_NUM_GPR);
  FUNC1(L->top++, RID_NUM_FPR);
  for (i = 0; i < RID_NUM_GPR; i++) {
    if (sizeof(ex->gpr[i]) == sizeof(int32_t))
      FUNC1(L->top++, (int32_t)ex->gpr[i]);
    else
      FUNC3(L->top++, (lua_Number)ex->gpr[i]);
  }
#if !LJ_SOFTFP
  for (i = 0; i < RID_NUM_FPR; i++) {
    FUNC3(L->top, ex->fpr[i]);
    if (FUNC0(FUNC4(L->top)))
      FUNC2(L->top);
    L->top++;
  }
#endif
}