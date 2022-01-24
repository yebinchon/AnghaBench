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
typedef  int /*<<< orphan*/  lua_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_LOADED_TABLE ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC11 (lua_State *L, lua_Debug *ar) {
  int top = FUNC4(L);
  FUNC3(L, "f", ar);  /* push function */
  FUNC2(L, LUA_REGISTRYINDEX, LUA_LOADED_TABLE);
  if (FUNC0(L, top + 1, 2)) {
    const char *name = FUNC9(L, -1);
    if (FUNC10(name, "_G.", 3) == 0) {  /* name start with '_G.'? */
      FUNC6(L, name + 3);  /* push name without prefix */
      FUNC7(L, -2);  /* remove original name */
    }
    FUNC1(L, -1, top + 1);  /* move name to proper place */
    FUNC5(L, 2);  /* remove pushed values */
    return 1;
  }
  else {
    FUNC8(L, top);  /* remove function and global table */
    return 0;
  }
}