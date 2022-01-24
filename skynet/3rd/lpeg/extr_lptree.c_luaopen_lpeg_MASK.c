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
 int LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  MAXBACK ; 
 char* MAXSTACKIDX ; 
 int /*<<< orphan*/  PATTERN_T ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  metareg ; 
 int /*<<< orphan*/  pattreg ; 

int FUNC6 (lua_State *L) {
  FUNC1(L, PATTERN_T);
  FUNC3(L, MAXBACK);  /* initialize maximum backtracking */
  FUNC5(L, LUA_REGISTRYINDEX, MAXSTACKIDX);
  FUNC2(L, metareg, 0);
  FUNC0(L, pattreg);
  FUNC4(L, -1);
  FUNC5(L, -3, "__index");
  return 1;
}