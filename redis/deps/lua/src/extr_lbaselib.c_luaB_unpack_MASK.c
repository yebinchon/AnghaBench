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

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  luaL_checkint ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC7 (lua_State *L) {
  int i, e, n;
  FUNC0(L, 1, LUA_TTABLE);
  i = FUNC4(L, 2, 1);
  e = FUNC3(L, luaL_checkint, 3, FUNC2(L, 1));
  if (i > e) return 0;  /* empty range */
  n = e - i + 1;  /* number of elements */
  if (n <= 0 || !FUNC5(L, n))  /* n <= 0 means arith. overflow */
    return FUNC1(L, "too many results to unpack");
  FUNC6(L, 1, i);  /* push arg[i] (avoiding overflow problems) */
  while (i++ < e)  /* push arg[i + 1...e] */
    FUNC6(L, 1, i);
  return n;
}