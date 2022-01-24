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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  progname ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC12(lua_State *L)
{
  FUNC3(L, "require");
  FUNC6(L, "jit.");
  FUNC7(L, -3);
  FUNC1(L, 2);
  if (FUNC5(L, 1, 1, 0)) {
    const char *msg = FUNC9(L, -1);
    if (msg && !FUNC11(msg, "module ", 7))
      goto nomodule;
    return FUNC10(L, 1);
  }
  FUNC2(L, -1, "start");
  if (FUNC4(L, -1)) {
  nomodule:
    FUNC0(progname,
	      "unknown luaJIT command or jit.* modules not installed");
    return 1;
  }
  FUNC8(L, -2);  /* Drop module table. */
  return 0;
}