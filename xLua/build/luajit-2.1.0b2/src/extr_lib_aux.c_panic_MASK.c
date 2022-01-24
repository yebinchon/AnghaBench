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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC4(lua_State *L)
{
  const char *s = FUNC3(L, -1);
  FUNC2("PANIC: unprotected error in call to Lua API (", stderr);
  FUNC2(s ? s : "?", stderr);
  FUNC1(')', stderr); FUNC1('\n', stderr);
  FUNC0(stderr);
  return 0;
}