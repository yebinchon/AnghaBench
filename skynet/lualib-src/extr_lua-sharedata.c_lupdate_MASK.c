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
struct ctrl {struct table* update; struct table* root; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_TLIGHTUSERDATA ; 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  LUA_TUSERDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(lua_State *L) {
	FUNC0(L, 1, LUA_TUSERDATA);
	FUNC0(L, 2, LUA_TLIGHTUSERDATA);
	FUNC0(L, 3, LUA_TTABLE);
	struct ctrl * c= FUNC4(L, 1);
	struct table *n = FUNC4(L, 2);
	if (c->root == n) {
		return FUNC1(L, "You should update a new object");
	}
	FUNC2(L, 3);
	FUNC3(L, 1);
	c->update = n;

	return 0;
}