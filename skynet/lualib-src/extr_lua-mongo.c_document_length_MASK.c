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
typedef  int /*<<< orphan*/ * document ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC8(lua_State *L) {
	if (FUNC3(L, 3)) {
		document doc = FUNC7(L,3);
		return FUNC0(doc);
	}
	if (FUNC2(L,3)) {
		int total = 0;
		int s = FUNC6(L,3);
		int i;
		for (i=1;i<=s;i++) {
			FUNC5(L, 3, i);
			document doc = FUNC7(L,-1);
			if (doc == NULL) {
				FUNC4(L,1);
				return FUNC1(L, "Invalid document at %d", i);
			} else {
				total += FUNC0(doc);
				FUNC4(L,1);
			}
		}
		return total;
	}
	return FUNC1(L, "Insert need documents");
}