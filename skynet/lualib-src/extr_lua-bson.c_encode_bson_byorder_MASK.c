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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct bson* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct bson*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(lua_State *L) {
	int n = FUNC0(L);
	struct bson *b = FUNC3(L, n);
	FUNC2(L, --n);
	FUNC5(L, b, n, 0);
	FUNC2(L,0);
	void * ud = FUNC1(L, b->size);
	FUNC4(ud, b->ptr, b->size);
	return 1;
}