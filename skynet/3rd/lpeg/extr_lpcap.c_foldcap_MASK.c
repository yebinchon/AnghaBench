#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {int idx; } ;
struct TYPE_6__ {TYPE_4__* cap; int /*<<< orphan*/ * L; } ;
typedef  TYPE_1__ CapState ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC9 (CapState *cs) {
  int n;
  lua_State *L = cs->L;
  int idx = cs->cap->idx;
  if (FUNC1(cs->cap++) ||  /* no nested captures? */
      FUNC0(cs->cap) ||  /* no nested captures (large subject)? */
      (n = FUNC7(cs)) == 0)  /* nested captures with no values? */
    return FUNC2(L, "no initial value for fold capture");
  if (n > 1)
    FUNC5(L, n - 1);  /* leave only one result for accumulator */
  while (!FUNC0(cs->cap)) {
    FUNC6(L, FUNC8(cs, idx));  /* get folding function */
    FUNC4(L, -2);  /* put it before accumulator */
    n = FUNC7(cs);  /* get next capture's values */
    FUNC3(L, n + 1, 1);  /* call folding function */
  }
  cs->cap++;  /* skip close entry */
  return 1;  /* only accumulator left on the stack */
}