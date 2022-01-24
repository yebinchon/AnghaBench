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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char const*,size_t) ; 

__attribute__((used)) static int FUNC9 (lua_State *L) {
  int n = FUNC3(L);  /* number of arguments */
  int i;
  FUNC2(L, "tostring");
  for (i=1; i<=n; i++) {
    const char *s;
    size_t l;
    FUNC5(L, -1);  /* function to be called */
    FUNC5(L, i);   /* value to print */
    FUNC1(L, 1, 1);
    s = FUNC6(L, -1, &l);  /* get result */
    if (s == NULL)
      return FUNC0(L, "'tostring' must return a string to 'print'");
    if (i>1) FUNC8("\t", 1);
    FUNC8(s, l);
    FUNC4(L, 1);  /* pop result */
  }
  FUNC7();
  return 0;
}