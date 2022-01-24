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
struct proxy {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  LUA_TLIGHTUSERDATA ; 
 scalar_t__ LUA_TUSERDATA ; 
 int /*<<< orphan*/  PROXYCACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC8(lua_State *L) {
	FUNC2(L, LUA_REGISTRYINDEX, PROXYCACHE);
	FUNC3(L, 1);
	// PROXYCACHE, table
	if (FUNC4(L, -2) != LUA_TUSERDATA) {
		FUNC1(L, "Invalid proxy table %p", FUNC5(L, 1));
	}
	struct proxy * p = FUNC6(L, -1);
	FUNC0(L, 2, LUA_TLIGHTUSERDATA);
	const char * newdata = FUNC6(L, 2);
	FUNC7(L, p->data, newdata);
	return 1;
}