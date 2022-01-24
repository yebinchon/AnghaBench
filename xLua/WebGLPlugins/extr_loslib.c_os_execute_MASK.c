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
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5 (lua_State *L) {
#if defined(WINAPI_FAMILY_PARTITION)
  return luaL_error(L, "unsupport api in uwp platform");
#else
  const char *cmd = FUNC2(L, 1, NULL);
  int stat = FUNC4(cmd);
  if (cmd != NULL)
    return FUNC1(L, stat);
  else {
    FUNC3(L, stat);  /* true if there is a shell */
    return 1;
  }
#endif
}