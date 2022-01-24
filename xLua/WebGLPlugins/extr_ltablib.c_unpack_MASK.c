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
typedef  scalar_t__ lua_Unsigned ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  scalar_t__ lua_Integer ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  luaL_checkinteger ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,scalar_t__) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
  lua_Unsigned n;
  lua_Integer i = FUNC3(L, 2, 1);
  lua_Integer e = FUNC2(L, luaL_checkinteger, 3, FUNC1(L, 1));
  if (i > e) return 0;  /* empty range */
  n = (lua_Unsigned)e - i;  /* number of elements minus 1 (avoid overflows) */
  if (n >= (unsigned int)INT_MAX  || !FUNC4(L, (int)(++n)))
    return FUNC0(L, "too many results to unpack");
  for (; i < e; i++) {  /* push arg[i..e - 1] (to avoid overflows) */
    FUNC5(L, 1, i);
  }
  FUNC5(L, 1, e);  /* push last element */
  return (int)n;
}