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
 int CO_SUS ; 
 int LUA_YIELD ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * statnames ; 

__attribute__((used)) static int FUNC8 (lua_State *L, lua_State *co, int narg) {
  int status = FUNC0(L, co);
  if (!FUNC2(co, narg))
    FUNC1(L, "too many arguments to resume");
  if (status != CO_SUS) {
    FUNC4(L, "cannot resume %s coroutine", statnames[status]);
    return -1;  /* error flag */
  }
  FUNC7(L, co, narg);
  FUNC6(L, co);
  status = FUNC5(co, narg);
  if (status == 0 || status == LUA_YIELD) {
    int nres = FUNC3(co);
    if (!FUNC2(L, nres + 1))
      FUNC1(L, "too many results to resume");
    FUNC7(co, L, nres);  /* move yielded values */
    return nres;
  }
  else {
    FUNC7(co, L, 1);  /* move error message */
    return -1;  /* error flag */
  }
}