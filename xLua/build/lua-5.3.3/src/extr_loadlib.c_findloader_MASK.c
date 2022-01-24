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
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 scalar_t__ LUA_TNIL ; 
 scalar_t__ LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13 (lua_State *L, const char *name) {
  int i;
  luaL_Buffer msg;  /* to build error message */
  FUNC1(L, &msg);
  /* push 'package.searchers' to index 3 in the stack */
  if (FUNC5(L, FUNC12(1), "searchers") != LUA_TTABLE)
    FUNC2(L, "'package.searchers' must be a table");
  /*  iterate over available searchers to find a loader */
  for (i = 1; ; i++) {
    if (FUNC10(L, 3, i) == LUA_TNIL) {  /* no more searchers? */
      FUNC8(L, 1);  /* remove nil */
      FUNC3(&msg);  /* create error message */
      FUNC2(L, "module '%s' not found:%s", name, FUNC11(L, -1));
    }
    FUNC9(L, name);
    FUNC4(L, 1, 2);  /* call it */
    if (FUNC6(L, -2))  /* did it find a loader? */
      return;  /* module loader found */
    else if (FUNC7(L, -2)) {  /* searcher returned error message? */
      FUNC8(L, 1);  /* remove extra return */
      FUNC0(&msg);  /* concatenate error message */
    }
    else
      FUNC8(L, 2);  /* remove both returns */
  }
}