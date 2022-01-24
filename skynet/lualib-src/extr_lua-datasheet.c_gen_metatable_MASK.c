#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {char* member_0; int /*<<< orphan*/ * member_1; } ;
typedef  TYPE_1__ luaL_Reg ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  NODECACHE ; 
 int /*<<< orphan*/  PROXYCACHE ; 
 int /*<<< orphan*/  TABLES ; 
 int /*<<< orphan*/ * lindex ; 
 int /*<<< orphan*/ * llen ; 
 int /*<<< orphan*/ * lpairs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC6(lua_State *L) {
	FUNC5(L, "kv");	// NODECACHE { pointer:table }
	FUNC4(L, LUA_REGISTRYINDEX, NODECACHE);

	FUNC5(L, "k");	// PROXYCACHE { table:userdata }
	FUNC4(L, LUA_REGISTRYINDEX, PROXYCACHE);

	FUNC2(L);
	FUNC4(L, LUA_REGISTRYINDEX, TABLES);

	FUNC1(L, 0, 1);	// mod table

	FUNC1(L, 0, 2);	// metatable
	luaL_Reg l[] = {
		{ "__index", lindex },
		{ "__pairs", lpairs },
		{ "__len", llen },
		{ NULL, NULL },
	};
	FUNC3(L, -1);
	FUNC0(L, l, 1);
}