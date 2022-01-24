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
 int LUA_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7 (lua_State *L) {
  const char *line = FUNC5(L, -1);  /* original line */
  const char *retline = FUNC2(L, "return %s;", line);
  int status = FUNC0(L, retline, FUNC6(retline), "=stdin");
  if (status == LUA_OK) {
    FUNC3(L, -2);  /* remove modified line */
    if (line[0] != '\0')  /* non empty? */
      FUNC4(L, line);  /* keep history */
  }
  else
    FUNC1(L, 2);  /* pop result from 'luaL_loadbuffer' and modified line */
  return status;
}