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
struct bson {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_TNIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct bson* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct bson*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct bson*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(lua_State *L) {
	struct bson *b = FUNC3(L, 2);
	FUNC2(L, 1);
	if (FUNC0(L, -1, "__pairs") != LUA_TNIL) {
		FUNC5(L, b, 0);
	} else {
		FUNC6(L, b, 0);
	}
	void * ud = FUNC1(L, b->size);
	FUNC4(ud, b->ptr, b->size);
	return 1;
}