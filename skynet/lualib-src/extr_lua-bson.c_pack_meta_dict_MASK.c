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
struct bson {scalar_t__ size; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int LUA_TNIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct bson*,int,int) ; 
 int FUNC6 (struct bson*) ; 
 int /*<<< orphan*/  FUNC7 (struct bson*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bson*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC9(lua_State *L, struct bson *b, int depth) {
	int length = FUNC6(b);

	FUNC3(L, -2); // push meta_obj
	FUNC0(L, 1, 3); // call __pairs_func => next_func, t_data, first_k
	for(;;) {
		FUNC3(L, -2); // copy data
		FUNC3(L, -2); // copy k
		FUNC1(L, -5, -3); // copy next_func replace old_k
		FUNC0(L, 2, 2); // call next_func

		int kt = FUNC4(L, -2);
		if (kt == LUA_TNIL) {
			FUNC2(L, 4); // pop all k, v, next_func, obj
			break;
		}
		FUNC5(L, b, depth, kt);
	}
	FUNC7(b,0);
	FUNC8(b, b->size - length, length);
}