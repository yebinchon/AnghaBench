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
 int /*<<< orphan*/  LUA_MINSTACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC16 (lua_State *L, int arg, int *totalsize) {
  int n = 1;  /* to count number of rules */
  int postab = FUNC5(L) + 1;  /* index of position table */
  int size;  /* accumulator for total size */
  FUNC6(L);  /* create position table */
  FUNC0(L, arg, postab);
  size = 2 + FUNC1(L, postab + 2);  /* TGrammar + TRule + rule */
  FUNC10(L);  /* prepare to traverse grammar table */
  while (FUNC7(L, arg) != 0) {
    if (FUNC13(L, -2) == 1 ||
        FUNC2(L, -2, postab + 1)) {  /* initial rule? */
      FUNC8(L, 1);  /* remove value (keep key for lua_next) */
      continue;
    }
    if (!FUNC14(L, -1))  /* value is not a pattern? */
      FUNC4(L, "rule '%s' is not a pattern", FUNC15(L, -2));
    FUNC3(L, LUA_MINSTACK, "grammar has too many rules");
    FUNC11(L, -2);  /* push key (to insert into position table) */
    FUNC9(L, size);
    FUNC12(L, postab);
    size += 1 + FUNC1(L, -1);  /* update size */
    FUNC11(L, -2);  /* push key (for next lua_next) */
    n++;
  }
  *totalsize = size + 1;  /* TTrue to finish list of rules */
  return n;
}