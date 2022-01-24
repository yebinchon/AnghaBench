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
struct skynet_context {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 char const* FUNC7 (int /*<<< orphan*/ *,int) ; 
 struct skynet_context* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct skynet_context*,char*,char const*) ; 

__attribute__((used)) static int
FUNC11(lua_State *L) {
	struct skynet_context * context = FUNC8(L, FUNC9(1));
	int n = FUNC5(L);
	if (n <= 1) {
		FUNC6(L, 1);
		const char * s = FUNC4(L, 1, NULL);
		FUNC10(context, "%s", s);
		return 0;
	}
	luaL_Buffer b;
	FUNC2(L, &b);
	int i;
	for (i=1; i<=n; i++) {
		FUNC4(L, i, NULL);
		FUNC1(&b);
		if (i<n) {
			FUNC0(&b, ' ');
		}
	}
	FUNC3(&b);
	FUNC10(context, "%s", FUNC7(L, -1));
	return 0;
}