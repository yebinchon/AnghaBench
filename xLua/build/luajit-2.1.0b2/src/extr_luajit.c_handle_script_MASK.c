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
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char**,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(lua_State *L, char **argv, int n)
{
  int status;
  const char *fname;
  int narg = FUNC1(L, argv, n);  /* collect arguments */
  FUNC5(L, "arg");
  fname = argv[n];
  if (FUNC7(fname, "-") == 0 && FUNC7(argv[n-1], "--") != 0)
    fname = NULL;  /* stdin */
  status = FUNC2(L, fname);
  FUNC3(L, -(narg+1));
  if (status == 0)
    status = FUNC0(L, narg, 0);
  else
    FUNC4(L, narg);
  return FUNC6(L, status);
}