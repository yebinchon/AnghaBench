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
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 char const* LUA_PATH_MARK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 char const* FUNC6 (int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC8 (char const*) ; 

__attribute__((used)) static const char *FUNC9 (lua_State *L, const char *name,
                                             const char *path,
                                             const char *sep,
                                             const char *dirsep) {
  luaL_Buffer msg;  /* to build error message */
  FUNC1(L, &msg);
  if (*sep != '\0')  /* non-empty separator? */
    name = FUNC2(L, name, sep, dirsep);  /* replace it by 'dirsep' */
  while ((path = FUNC7(L, path)) != NULL) {
    const char *filename = FUNC2(L, FUNC6(L, -1),
                                     LUA_PATH_MARK, name);
    FUNC5(L, -2);  /* remove path template */
    if (FUNC8(filename))  /* does file exist and is readable? */
      return filename;  /* return that file name */
    FUNC4(L, "\n\tno file '%s'", filename);
    FUNC5(L, -2);  /* remove file name */
    FUNC0(&msg);  /* concatenate error msg. entry */
  }
  FUNC3(&msg);  /* create error message */
  return NULL;  /* not found */
}