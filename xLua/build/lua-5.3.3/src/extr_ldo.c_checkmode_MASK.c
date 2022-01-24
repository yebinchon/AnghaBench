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
 int /*<<< orphan*/  LUA_ERRSYNTAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const) ; 

__attribute__((used)) static void FUNC3 (lua_State *L, const char *mode, const char *x) {
  if (mode && FUNC2(mode, x[0]) == NULL) {
    FUNC1(L,
       "attempt to load a %s chunk (mode is '%s')", x, mode);
    FUNC0(L, LUA_ERRSYNTAX);
  }
}