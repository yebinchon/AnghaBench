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
typedef  int /*<<< orphan*/  lua_CFunction ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7 (lua_State *L, const char *method, int iszero,
                      lua_CFunction iter) {
  if (!FUNC1(L, 1, method)) {  /* no metamethod? */
    FUNC0(L, 1, LUA_TTABLE);  /* argument must be a table */
    FUNC3(L, iter);  /* will return generator, */
    FUNC6(L, 1);  /* state, */
    if (iszero) FUNC4(L, 0);  /* and initial value */
    else FUNC5(L);
  }
  else {
    FUNC6(L, 1);  /* argument 'self' to metamethod */
    FUNC2(L, 1, 3);  /* get 3 values from metamethod */
  }
  return 3;
}