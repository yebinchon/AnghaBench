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
 int /*<<< orphan*/  HOOKKEY ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  LUA_TFUNCTION ; 
 scalar_t__ LUA_TNIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * hookf ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC18 (char const*,int) ; 

__attribute__((used)) static int FUNC19 (lua_State *L) {
  int arg, mask, count;
  lua_Hook func;
  lua_State *L1 = FUNC1(L, &arg);
  if (FUNC6(L, arg+1)) {  /* no hook? */
    FUNC16(L, arg+1);
    func = NULL; mask = 0; count = 0;  /* turn off hooks */
  }
  else {
    const char *smask = FUNC2(L, arg+2);
    FUNC3(L, arg+1, LUA_TFUNCTION);
    count = (int)FUNC4(L, arg + 3, 0);
    func = hookf; mask = FUNC18(smask, count);
  }
  if (FUNC10(L, LUA_REGISTRYINDEX, &HOOKKEY) == LUA_TNIL) {
    FUNC5(L, 0, 2);  /* create a hook table */
    FUNC9(L, -1);
    FUNC12(L, LUA_REGISTRYINDEX, &HOOKKEY);  /* set it in position */
    FUNC7(L, "k");
    FUNC13(L, -2, "__mode");  /** hooktable.__mode = "k" */
    FUNC9(L, -1);
    FUNC15(L, -2);  /* setmetatable(hooktable) = hooktable */
  }
  FUNC0(L, L1, 1);
  FUNC8(L1); FUNC17(L1, L, 1);  /* key (thread) */
  FUNC9(L, arg + 1);  /* value (hook function) */
  FUNC11(L, -3);  /* hooktable[L1] = new Lua hook */
  FUNC14(L1, func, mask, count);
  return 0;
}