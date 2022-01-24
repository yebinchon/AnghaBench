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
 int LUA_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5 (lua_State *L, char **argv) {
  int status;
  const char *fname = argv[0];
  if (FUNC4(fname, "-") == 0 && FUNC4(argv[-1], "--") != 0)
    fname = NULL;  /* stdin */
  status = FUNC1(L, fname);
  if (status == LUA_OK) {
    int n = FUNC2(L);  /* push arguments to script */
    status = FUNC0(L, n, LUA_MULTRET);
  }
  return FUNC3(L, status);
}