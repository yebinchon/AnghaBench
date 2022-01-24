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
typedef  scalar_t__ lua_Number ;

/* Variables and functions */
 scalar_t__ LUA_TNUMBER ; 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7 (lua_State *L) {
  lua_Number max = 0;
  FUNC0(L, 1, LUA_TTABLE);
  FUNC3(L);  /* first key */
  while (FUNC1(L, 1)) {
    FUNC2(L, 1);  /* remove value */
    if (FUNC6(L, -1) == LUA_TNUMBER) {
      lua_Number v = FUNC5(L, -1);
      if (v > max) max = v;
    }
  }
  FUNC4(L, max);
  return 1;
}