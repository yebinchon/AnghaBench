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
struct table {int dummy; } ;
struct proxy {int index; void const* data; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TTABLE ; 
 int /*<<< orphan*/  NODECACHE ; 
 int /*<<< orphan*/  PROXYCACHE ; 
 struct table* FUNC0 (void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct proxy* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,struct table const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,struct table const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13(lua_State *L, const void *data, int index) {
	const struct table * t = FUNC0(data, index);
	if (t == NULL) {
		FUNC1(L, "Invalid index %d", index);
	}
	FUNC2(L, LUA_REGISTRYINDEX, NODECACHE);
	if (FUNC7(L, -1, t) == LUA_TTABLE) {
		FUNC10(L, -2);
		return;
	}
	FUNC5(L, 1);
	FUNC3(L);
	FUNC6(L, FUNC12(1));
	FUNC11(L, -2);
	FUNC6(L, -1);
	// NODECACHE, table, table
	FUNC9(L, -3, t);
	// NODECACHE, table
	FUNC2(L, LUA_REGISTRYINDEX, PROXYCACHE);
	// NODECACHE, table, PROXYCACHE
	FUNC6(L, -2);
	// NODECACHE, table, PROXYCACHE, table
	struct proxy * p = FUNC4(L, sizeof(struct proxy));
	// NODECACHE, table, PROXYCACHE, table, proxy
	p->data = data;
	p->index = index;
	FUNC8(L, -3);
	// NODECACHE, table, PROXYCACHE
	FUNC5(L, 1);
	// NODECACHE, table
	FUNC10(L, -2);
	// table
}