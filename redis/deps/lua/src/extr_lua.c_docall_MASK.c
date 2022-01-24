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
 int /*<<< orphan*/  LUA_GCCOLLECT ; 
 int /*<<< orphan*/  LUA_MULTRET ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  laction ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  traceback ; 

__attribute__((used)) static int FUNC7 (lua_State *L, int narg, int clear) {
  int status;
  int base = FUNC1(L) - narg;  /* function index */
  FUNC4(L, traceback);  /* push traceback function */
  FUNC2(L, base);  /* put it under chunk and args */
  FUNC6(SIGINT, laction);
  status = FUNC3(L, narg, (clear ? 0 : LUA_MULTRET), base);
  FUNC6(SIGINT, SIG_DFL);
  FUNC5(L, base);  /* remove traceback function */
  /* force a complete garbage collection in case of errors */
  if (status != 0) FUNC0(L, LUA_GCCOLLECT, 0);
  return status;
}