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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
#if defined(WINAPI_FAMILY_PARTITION)
  return luaL_error(L, "unsupport api in uwp platform");
#else
  const char *filename = FUNC0(L, 1);
  const char *mode = FUNC2(L, 2, "r");
  FILE **pf = FUNC4(L);
  *pf = FUNC3(L, filename, mode);
  return (*pf == NULL) ? FUNC5(L, 0, filename) : 1;
#endif
}