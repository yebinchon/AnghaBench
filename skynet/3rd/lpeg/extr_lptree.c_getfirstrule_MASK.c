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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11 (lua_State *L, int arg, int postab) {
  FUNC7(L, arg, 1);  /* access first element */
  if (FUNC4(L, -1)) {  /* is it the name of initial rule? */
    FUNC6(L, -1);  /* duplicate it to use as key */
    FUNC1(L, arg);  /* get associated rule */
  }
  else {
    FUNC5(L, 1);  /* key for initial rule */
    FUNC2(L, -2);  /* put it before rule */
  }
  if (!FUNC10(L, -1)) {  /* initial rule not a pattern? */
    if (FUNC3(L, -1))
      FUNC0(L, "grammar has no initial rule");
    else
      FUNC0(L, "initial rule '%s' is not a pattern", FUNC9(L, -2));
  }
  FUNC6(L, -2);  /* push key */
  FUNC5(L, 1);  /* push rule position (after TGrammar) */
  FUNC8(L, postab);  /* insert pair at position table */
}