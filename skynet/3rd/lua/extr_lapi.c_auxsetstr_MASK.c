#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TString ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  luaH_getstr ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char const*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__,scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7 (lua_State *L, const TValue *t, const char *k) {
  const TValue *slot;
  TString *str = FUNC2(L, k);
  FUNC0(L, 1);
  if (FUNC3(L, t, str, slot, luaH_getstr, L->top - 1))
    L->top--;  /* pop value */
  else {
    FUNC6(L, L->top, str);  /* push 'str' (to make it a TValue) */
    FUNC1(L);
    FUNC4(L, t, L->top - 1, L->top - 2, slot);
    L->top -= 2;  /* pop value and key */
  }
  FUNC5(L);  /* lock done by caller */
}