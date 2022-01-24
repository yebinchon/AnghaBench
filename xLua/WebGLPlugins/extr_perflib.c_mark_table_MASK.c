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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void const*,int) ; 

__attribute__((used)) static void FUNC7(lua_State *L, lua_State *dL) {
	const void *p = FUNC4(L, -1);
	int len = 0;
	
	if (!FUNC0(dL, p)) {
		FUNC6(dL, p, 0);

		FUNC3(L);
		while (FUNC1(L, -2) != 0) {
			++len;
			FUNC5(L, dL);
			FUNC2(L, 1);
			FUNC5(L, dL);
		}
		
		FUNC6(dL, p, len);
	}
}