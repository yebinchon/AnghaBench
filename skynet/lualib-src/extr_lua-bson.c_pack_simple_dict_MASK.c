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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bson*,int,int) ; 
 int FUNC4 (struct bson*) ; 
 int /*<<< orphan*/  FUNC5 (struct bson*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bson*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC7(lua_State *L, struct bson *b, int depth) {
	int length = FUNC4(b);
	FUNC1(L);
	while(FUNC0(L,-2) != 0) {
		int kt = FUNC2(L, -2);
		FUNC3(L, b, depth, kt);
	}
	FUNC5(b,0);
	FUNC6(b, b->size - length, length);
}