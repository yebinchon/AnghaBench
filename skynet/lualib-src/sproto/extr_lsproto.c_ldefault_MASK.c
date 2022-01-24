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
struct sproto_type {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  dummy ;

/* Variables and functions */
 int /*<<< orphan*/  encode_default ; 
 int FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct sproto_type* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct sproto_type*,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(lua_State *L) {
	int ret;
	// 64 is always enough for dummy buffer, except the type has many fields ( > 27).
	char dummy[64];
	struct sproto_type * st = FUNC5(L, 1);
	if (st == NULL) {
		return FUNC0(L, 1, "Need a sproto_type object");
	}
	FUNC2(L);
	ret = FUNC6(st, dummy, sizeof(dummy), encode_default, L);
	if (ret<0) {
		// try again
		int sz = sizeof(dummy) * 2;
		void * tmp = FUNC3(L, sz);
		FUNC1(L, -2);
		for (;;) {
			ret = FUNC6(st, tmp, sz, encode_default, L);
			if (ret >= 0)
				break;
			sz *= 2;
			tmp = FUNC3(L, sz);
			FUNC4(L, -3);
		}
	}
	return 1;
}