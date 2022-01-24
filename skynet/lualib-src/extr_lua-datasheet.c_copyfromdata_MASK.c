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
struct proxy {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TUSERDATA ; 
 int /*<<< orphan*/  PROXYCACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,struct proxy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 struct proxy* FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC10(lua_State *L) {
	FUNC2(L, LUA_REGISTRYINDEX, PROXYCACHE);
	FUNC5(L, 1);
	// PROXYCACHE, table
	if (FUNC6(L, -2) != LUA_TUSERDATA) {
		FUNC1(L, "Invalid proxy table %p", FUNC8(L, 1));
	}
	struct proxy * p = FUNC9(L, -1);
	FUNC3(L, 2);
	FUNC0(L, 1, p);
	FUNC4(L);
	FUNC7(L, 1);	// remove metatable
}