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
struct context {scalar_t__ string_index; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int LUA_OK ; 
 int /*<<< orphan*/  convtable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int,size_t*) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC11(lua_State *L) {
	struct context *ctx = FUNC10(L,1);
	lua_State * pL = FUNC10(L, 2);
	int ret;

	FUNC8(L, 0);

	// init L (may throw memory error)
	// create a table for string map
	FUNC2(L);

	FUNC4(pL, convtable);
	FUNC7(pL,1);
	FUNC5(pL, ctx);

	ret = FUNC3(pL, 2, 0, 0);
	if (ret != LUA_OK) {
		size_t sz = 0;
		const char * error = FUNC9(pL, -1, &sz);
		FUNC6(L, error, sz);
		FUNC1(L);
		// never get here
	}

	FUNC0(L, ctx->string_index + 3, NULL);
	FUNC8(L,1);

	return 1;
}