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
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(lua_State *L, char **argx)
{
  int status;
  const char *fname = argx[0];
  if (FUNC9(fname, "-") == 0 && FUNC9(argx[-1], "--") != 0)
    fname = NULL;  /* stdin */
  status = FUNC1(L, fname);
  if (status == LUA_OK) {
    /* Fetch args from arg table. LUA_INIT or -e might have changed them. */
    int narg = 0;
    FUNC2(L, "arg");
    if (FUNC4(L, -1)) {
      do {
	narg++;
	FUNC6(L, -narg, narg);
      } while (!FUNC3(L, -1));
      FUNC5(L, 1);
      FUNC7(L, -narg);
      narg--;
    } else {
      FUNC5(L, 1);
    }
    status = FUNC0(L, narg, 0);
  }
  return FUNC8(L, status);
}