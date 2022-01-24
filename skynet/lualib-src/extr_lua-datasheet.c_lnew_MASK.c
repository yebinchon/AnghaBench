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
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  LUA_TLIGHTUSERDATA ; 
 int /*<<< orphan*/  TABLES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC6(lua_State *L) {
	FUNC1(L, 1, LUA_TLIGHTUSERDATA);
	const char * data = FUNC5(L, 1);
	// hold ref to data
	FUNC2(L, LUA_REGISTRYINDEX, TABLES);
	FUNC3(L, 1);
	FUNC4(L, -2, data);

	FUNC0(L, data, 0);
	return 1;
}