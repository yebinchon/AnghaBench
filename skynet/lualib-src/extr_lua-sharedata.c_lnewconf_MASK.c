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
struct table {int string_index; struct table* L; struct table* tbl; } ;
struct context {int string_index; struct context* L; struct context* tbl; } ;
typedef  struct table lua_State ;

/* Variables and functions */
 int LUA_OK ; 
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (struct table*,struct table*) ; 
 int /*<<< orphan*/  FUNC1 (struct table*) ; 
 int /*<<< orphan*/  FUNC2 (struct table*,int,int /*<<< orphan*/ ) ; 
 struct table* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct table*) ; 
 int /*<<< orphan*/  FUNC5 (struct table*) ; 
 int FUNC6 (struct table*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct table*,struct table*) ; 
 int /*<<< orphan*/  FUNC9 (struct table*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct table*,char const*,size_t) ; 
 char* FUNC11 (struct table*,int,size_t*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pconv ; 

__attribute__((used)) static int
FUNC14(lua_State *L) {
	int ret;
	struct context ctx;
	struct table * tbl = NULL;
	FUNC2(L,1,LUA_TTABLE);
	ctx.L = FUNC3();
	ctx.tbl = NULL;
	ctx.string_index = 1;	// 1 reserved for dirty flag
	if (ctx.L == NULL) {
		FUNC9(L, "memory error");
		goto error;
	}
	tbl = (struct table *)FUNC12(sizeof(struct table));
	if (tbl == NULL) {
		// lua_pushliteral may fail because of memory error, close first.
		FUNC4(ctx.L);
		ctx.L = NULL;
		FUNC9(L, "memory error");
		goto error;
	}
	FUNC13(tbl, 0, sizeof(struct table));
	ctx.tbl = tbl;

	FUNC7(ctx.L, pconv);
	FUNC8(ctx.L , &ctx);
	FUNC8(ctx.L , L);

	ret = FUNC6(ctx.L, 2, 1, 0);

	if (ret != LUA_OK) {
		size_t sz = 0;
		const char * error = FUNC11(ctx.L, -1, &sz);
		FUNC10(L, error, sz);
		goto error;
	}

	FUNC0(&ctx, tbl);

	FUNC8(L, tbl);	

	return 1;
error:
	if (ctx.L) {
		FUNC4(ctx.L);
	}
	if (tbl) {
		FUNC1(tbl);
	}
	FUNC5(L);
	return -1;
}