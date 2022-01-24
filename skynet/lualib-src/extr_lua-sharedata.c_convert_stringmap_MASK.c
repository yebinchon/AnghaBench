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
struct table {int dummy; } ;
struct state {struct table* root; scalar_t__ ref; scalar_t__ dirty; } ;
struct context {scalar_t__ string_index; int /*<<< orphan*/ * L; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_GCCOLLECT ; 
 scalar_t__ LUA_MINSTACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct state* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC10(struct context *ctx, struct table *tbl) {
	lua_State *L = ctx->L;
	FUNC0(L, ctx->string_index + LUA_MINSTACK);
	FUNC8(L, ctx->string_index + 1);
	FUNC6(L, 1);
	struct state * s = FUNC2(L, sizeof(*s));
	s->dirty = 0;
	s->ref = 0;
	s->root = tbl;
	FUNC7(L, 1);
	FUNC7(L, -2);

	FUNC5(L);
	// ... stringmap nil
	while (FUNC3(L, -2) != 0) {
		int idx = FUNC9(L, -1);
		FUNC4(L, 1);
		FUNC6(L, -1);
		FUNC7(L, idx);
	}

	FUNC4(L, 1);

	FUNC1(L, LUA_GCCOLLECT, 0);
}