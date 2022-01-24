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
typedef  scalar_t__ lua_Integer ;

/* Variables and functions */
 scalar_t__ LUA_MAXINTEGER ; 
 int /*<<< orphan*/  LUA_OPEQ ; 
 int /*<<< orphan*/  TAB_R ; 
 int /*<<< orphan*/  TAB_W ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,scalar_t__) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
  lua_Integer f = FUNC2(L, 2);
  lua_Integer e = FUNC2(L, 3);
  lua_Integer t = FUNC2(L, 4);
  int tt = !FUNC5(L, 5) ? 5 : 1;  /* destination table */
  FUNC0(L, 1, TAB_R);
  FUNC0(L, tt, TAB_W);
  if (e >= f) {  /* otherwise, nothing to move */
    lua_Integer n, i;
    FUNC1(L, f > 0 || e < LUA_MAXINTEGER + f, 3,
                  "too many elements to move");
    n = e - f + 1;  /* number of elements to move */
    FUNC1(L, t <= LUA_MAXINTEGER - n + 1, 4,
                  "destination wrap around");
    if (t > e || t <= f || (tt != 1 && !FUNC3(L, 1, tt, LUA_OPEQ))) {
      for (i = 0; i < n; i++) {
        FUNC4(L, 1, f + i);
        FUNC7(L, tt, t + i);
      }
    }
    else {
      for (i = n - 1; i >= 0; i--) {
        FUNC4(L, 1, f + i);
        FUNC7(L, tt, t + i);
      }
    }
  }
  FUNC6(L, tt);  /* return destination table */
  return 1;
}