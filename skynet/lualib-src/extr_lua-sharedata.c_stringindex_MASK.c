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
struct context {int string_index; int /*<<< orphan*/ * L; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC8(struct context *ctx, const char * str, size_t sz) {
	lua_State *L = ctx->L;
	FUNC3(L, str, sz);
	FUNC4(L, -1);
	FUNC5(L, 1);
	int index;
	// stringmap(1) str index
	if (FUNC0(L, -1)) {
		index = ++ctx->string_index;
		FUNC1(L, 1);
		FUNC2(L, index);
		FUNC6(L, 1);
	} else {
		index = FUNC7(L, -1);
		FUNC1(L, 2);
	}
	return index;
}