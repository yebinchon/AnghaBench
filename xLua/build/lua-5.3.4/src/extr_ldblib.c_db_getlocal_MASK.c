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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 char const* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12 (lua_State *L) {
  int arg;
  lua_State *L1 = FUNC1(L, &arg);
  lua_Debug ar;
  const char *name;
  int nvar = (int)FUNC3(L, arg + 2);  /* local-variable index */
  if (FUNC6(L, arg + 1)) {  /* function argument? */
    FUNC9(L, arg + 1);  /* push function */
    FUNC8(L, FUNC4(L, NULL, nvar));  /* push local name */
    return 1;  /* return only name (there is no value) */
  }
  else {  /* stack-level argument */
    int level = (int)FUNC3(L, arg + 1);
    if (!FUNC5(L1, level, &ar))  /* out of range? */
      return FUNC2(L, arg+1, "level out of range");
    FUNC0(L, L1, 1);
    name = FUNC4(L1, &ar, nvar);
    if (name) {
      FUNC11(L1, L, 1);  /* move local value */
      FUNC8(L, name);  /* push name */
      FUNC10(L, -2, 1);  /* re-order */
      return 2;
    }
    else {
      FUNC7(L);  /* no name (nor value) */
      return 1;
    }
  }
}