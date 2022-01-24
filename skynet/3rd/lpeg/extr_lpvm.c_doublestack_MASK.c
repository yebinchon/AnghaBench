#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  Stack ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  MAXSTACKIDX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static Stack *FUNC9 (lua_State *L, Stack **stacklimit, int ptop) {
  Stack *stack = FUNC0(L, ptop);
  Stack *newstack;
  int n = *stacklimit - stack;  /* current stack size */
  int max, newn;
  FUNC2(L, LUA_REGISTRYINDEX, MAXSTACKIDX);
  max = FUNC6(L, -1);  /* maximum allowed size */
  FUNC4(L, 1);
  if (n >= max)  /* already at maximum size? */
    FUNC1(L, "backtrack stack overflow (current limit is %d)", max);
  newn = 2 * n;  /* new size */
  if (newn > max) newn = max;
  newstack = (Stack *)FUNC3(L, newn * sizeof(Stack));
  FUNC7(newstack, stack, n * sizeof(Stack));
  FUNC5(L, FUNC8(ptop));
  *stacklimit = newstack + newn;
  return newstack + n;  /* return next position */
}