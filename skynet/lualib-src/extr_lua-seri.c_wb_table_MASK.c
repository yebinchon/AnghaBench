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
struct write_block {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_MINSTACK ; 
 scalar_t__ LUA_TNIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct write_block*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct write_block*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct write_block*,int,int) ; 

__attribute__((used)) static void
FUNC6(lua_State *L, struct write_block *wb, int index, int depth) {
	FUNC0(L, LUA_MINSTACK, NULL);
	if (index < 0) {
		index = FUNC2(L) + index + 1;
	}
	if (FUNC1(L, index, "__pairs") != LUA_TNIL) {
		FUNC5(L, wb, index, depth);
	} else {
		int array_size = FUNC3(L, wb, index, depth);
		FUNC4(L, wb, index, depth, array_size);
	}
}