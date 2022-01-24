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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char const* FUNC4 (int /*<<< orphan*/ *,char const*,char const*,char*,char const*) ; 

__attribute__((used)) static const char *FUNC5 (lua_State *L, const char *name,
                                           const char *pname,
                                           const char *dirsep) {
  const char *path;
  FUNC1(L, FUNC3(1), pname);
  path = FUNC2(L, -1);
  if (path == NULL)
    FUNC0(L, "'package.%s' must be a string", pname);
  return FUNC4(L, name, path, ".", dirsep);
}