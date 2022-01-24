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
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 (lua_State *L) {
#if defined(WINAPI_FAMILY_PARTITION)
  return luaL_error(L, "unsupport api in uwp platform");
#else
  FILE **p = FUNC3(L);
  int ok = FUNC1(L, *p);
  *p = NULL;
  return FUNC2(L, ok, NULL);
#endif
}