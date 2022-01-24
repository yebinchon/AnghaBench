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
 int LUA_OK ; 
 int LUA_YIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7 (lua_State *L, lua_State *co, int narg) {
  int status;
  if (!FUNC0(co, narg)) {
    FUNC3(L, "too many arguments to resume");
    return -1;  /* error flag */
  }
  if (FUNC5(co) == LUA_OK && FUNC1(co) == 0) {
    FUNC3(L, "cannot resume dead coroutine");
    return -1;  /* error flag */
  }
  FUNC6(L, co, narg);
  status = FUNC4(co, L, narg);
  if (status == LUA_OK || status == LUA_YIELD) {
    int nres = FUNC1(co);
    if (!FUNC0(L, nres + 1)) {
      FUNC2(co, nres);  /* remove results anyway */
      FUNC3(L, "too many results to resume");
      return -1;  /* error flag */
    }
    FUNC6(co, L, nres);  /* move yielded values */
    return nres;
  }
  else {
    FUNC6(co, L, 1);  /* move error message */
    return -1;  /* error flag */
  }
}