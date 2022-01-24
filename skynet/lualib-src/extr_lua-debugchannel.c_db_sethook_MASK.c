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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * hookf ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC17 (char const*,int) ; 

__attribute__((used)) static int FUNC18 (lua_State *L) {
  int arg, mask, count;
  lua_Hook func;
  lua_State *L1 = FUNC0(L, &arg);
  if (FUNC5(L, arg+1)) {  /* no hook? */
    FUNC15(L, arg+1);
    func = NULL; mask = 0; count = 0;  /* turn off hooks */
  }
  else {
    const char *smask = FUNC1(L, arg+2);
    FUNC2(L, arg+1, LUA_TFUNCTION);
    count = (int)FUNC3(L, arg + 3, 0);
    func = hookf; mask = FUNC17(smask, count);
  }
  if (FUNC9(L, LUA_REGISTRYINDEX, &HOOKKEY) == LUA_TNIL) {
    FUNC4(L, 0, 2);  /* create a hook table */
    FUNC8(L, -1);
    FUNC11(L, LUA_REGISTRYINDEX, &HOOKKEY);  /* set it in position */
    FUNC6(L, "k");
    FUNC12(L, -2, "__mode");  /** hooktable.__mode = "k" */
    FUNC8(L, -1);
    FUNC14(L, -2);  /* setmetatable(hooktable) = hooktable */
  }
  FUNC7(L1); FUNC16(L1, L, 1);  /* key (thread) */
  FUNC8(L, arg + 1);  /* value (hook function) */
  FUNC10(L, -3);  /* hooktable[L1] = new Lua hook */
  FUNC13(L1, func, mask, count);
  return 0;
}