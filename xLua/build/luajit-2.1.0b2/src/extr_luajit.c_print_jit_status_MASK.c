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
 int /*<<< orphan*/  LUA_MULTRET ; 
 int LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC8(lua_State *L)
{
  int n;
  const char *s;
  FUNC2(L, LUA_REGISTRYINDEX, "_LOADED");
  FUNC2(L, -1, "jit");  /* Get jit.* module table. */
  FUNC4(L, -2);
  FUNC2(L, -1, "status");
  FUNC4(L, -2);
  n = FUNC3(L);
  FUNC1(L, 0, LUA_MULTRET);
  FUNC0(FUNC5(L, n) ? "JIT: ON" : "JIT: OFF", stdout);
  for (n++; (s = FUNC6(L, n)); n++) {
    FUNC7(' ', stdout);
    FUNC0(s, stdout);
  }
  FUNC7('\n', stdout);
}