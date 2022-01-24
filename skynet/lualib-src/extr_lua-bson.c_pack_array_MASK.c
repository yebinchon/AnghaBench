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
 int /*<<< orphan*/  FUNC0 (struct bson*,int /*<<< orphan*/ *,char const*,size_t,int) ; 
 size_t FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct bson*) ; 
 int /*<<< orphan*/  FUNC5 (struct bson*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bson*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC7(lua_State *L, struct bson *b, int depth, size_t len) {
	int length = FUNC4(b);
	size_t i;
	for (i=1;i<=len;i++) {
		char numberkey[32];
		size_t sz = FUNC1(numberkey, i - 1);
		const char * key = numberkey;
		FUNC2(L, -1, i);
		FUNC0(b, L, key, sz, depth);
		FUNC3(L, 1);
	}
	FUNC5(b,0);
	FUNC6(b, b->size - length, length);
}