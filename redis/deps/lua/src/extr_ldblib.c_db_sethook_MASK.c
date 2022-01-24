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
typedef  int /*<<< orphan*/ * lua_Hook ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TFUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * hookf ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (char const*,int) ; 

__attribute__((used)) static int FUNC13 (lua_State *L) {
  int arg, mask, count;
  lua_Hook func;
  lua_State *L1 = FUNC1(L, &arg);
  if (FUNC5(L, arg+1)) {
    FUNC11(L, arg+1);
    func = NULL; mask = 0; count = 0;  /* turn off hooks */
  }
  else {
    const char *smask = FUNC2(L, arg+2);
    FUNC3(L, arg+1, LUA_TFUNCTION);
    count = FUNC4(L, arg+3, 0);
    func = hookf; mask = FUNC12(smask, count);
  }
  FUNC0(L);
  FUNC7(L, L1);
  FUNC8(L, arg+1);
  FUNC9(L, -3);  /* set new hook */
  FUNC6(L, 1);  /* remove hook table */
  FUNC10(L1, func, mask, count);  /* set hooks */
  return 0;
}