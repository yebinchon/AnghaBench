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
 int LUA_REGISTRYINDEX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC9 (char const*,char) ; 
 size_t FUNC10 (char const*) ; 

__attribute__((used)) static int FUNC11(lua_State *L, const char *cmd)
{
  const char *opt = FUNC9(cmd, '=');
  FUNC5(L, cmd, opt ? (size_t)(opt - cmd) : FUNC10(cmd));
  FUNC1(L, LUA_REGISTRYINDEX, "_LOADED");
  FUNC1(L, -1, "jit");  /* Get jit.* module table. */
  FUNC7(L, -2);
  FUNC6(L, -2);
  FUNC2(L, -2);  /* Lookup library function. */
  if (!FUNC3(L, -1)) {
    FUNC4(L, 2);  /* Drop non-function and jit.* table, keep module name. */
    if (FUNC0(L))
      return 1;
  } else {
    FUNC7(L, -2);  /* Drop jit.* table. */
  }
  FUNC7(L, -2);  /* Drop module name. */
  return FUNC8(L, opt ? opt+1 : opt);
}