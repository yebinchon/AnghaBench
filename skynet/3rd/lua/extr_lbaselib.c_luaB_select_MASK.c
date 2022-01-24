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

/* Variables and functions */
 scalar_t__ LUA_TSTRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6 (lua_State *L) {
  int n = FUNC2(L);
  if (FUNC5(L, 1) == LUA_TSTRING && *FUNC4(L, 1) == '#') {
    FUNC3(L, n-1);
    return 1;
  }
  else {
    lua_Integer i = FUNC1(L, 1);
    if (i < 0) i = n + i;
    else if (i > n) i = n;
    FUNC0(L, 1 <= i, 1, "index out of range");
    return n - (int)i;
  }
}