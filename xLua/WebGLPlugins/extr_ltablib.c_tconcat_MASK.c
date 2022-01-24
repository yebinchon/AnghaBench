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
typedef  int lua_Integer ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  TAB_R ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7 (lua_State *L) {
  luaL_Buffer b;
  lua_Integer last = FUNC1(L, 1, TAB_R);
  size_t lsep;
  const char *sep = FUNC5(L, 2, "", &lsep);
  lua_Integer i = FUNC4(L, 3, 1);
  last = FUNC4(L, 4, last);
  FUNC3(L, &b);
  for (; i < last; i++) {
    FUNC0(L, &b, i);
    FUNC2(&b, sep, lsep);
  }
  if (i == last)  /* add last value (if interval was not empty) */
    FUNC0(L, &b, i);
  FUNC6(&b);
  return 1;
}