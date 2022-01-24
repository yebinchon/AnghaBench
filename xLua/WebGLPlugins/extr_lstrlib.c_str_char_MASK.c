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
typedef  char lua_Integer ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 char FUNC5 (char) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
  int n = FUNC4(L);  /* number of arguments */
  int i;
  luaL_Buffer b;
  char *p = FUNC1(L, &b, n);
  for (i=1; i<=n; i++) {
    lua_Integer c = FUNC2(L, i);
    FUNC0(L, FUNC5(c) == c, i, "value out of range");
    p[i - 1] = FUNC5(c);
  }
  FUNC3(&b, n);
  return 1;
}