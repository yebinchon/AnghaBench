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
typedef  int lua_Integer ;

/* Variables and functions */
 scalar_t__ LUA_TNUMBER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct write_block*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct write_block*) ; 

__attribute__((used)) static void
FUNC8(lua_State *L, struct write_block * wb, int index, int depth, int array_size) {
	FUNC3(L);
	while (FUNC1(L, index) != 0) {
		if (FUNC5(L,-2) == LUA_TNUMBER) {
			if (FUNC0(L, -2)) {
				lua_Integer x = FUNC4(L,-2);
				if (x>0 && x<=array_size) {
					FUNC2(L,1);
					continue;
				}
			}
		}
		FUNC6(L,wb,-2,depth);
		FUNC6(L,wb,-1,depth);
		FUNC2(L, 1);
	}
	FUNC7(wb);
}