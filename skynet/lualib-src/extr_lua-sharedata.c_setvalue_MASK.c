#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct table {int dummy; } ;
struct TYPE_2__ {struct table* tbl; int /*<<< orphan*/  boolean; int /*<<< orphan*/  string; int /*<<< orphan*/  n; int /*<<< orphan*/  d; } ;
struct node {int /*<<< orphan*/  valuetype; TYPE_1__ v; } ;
struct context {struct table* tbl; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  LUA_TBOOLEAN 132 
#define  LUA_TNIL 131 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int /*<<< orphan*/  VALUETYPE_BOOLEAN ; 
 int /*<<< orphan*/  VALUETYPE_INTEGER ; 
 int /*<<< orphan*/  VALUETYPE_NIL ; 
 int /*<<< orphan*/  VALUETYPE_REAL ; 
 int /*<<< orphan*/  VALUETYPE_STRING ; 
 int /*<<< orphan*/  VALUETYPE_TABLE ; 
 int /*<<< orphan*/  convtable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct context*,char const*,size_t) ; 

__attribute__((used)) static void
FUNC16(struct context * ctx, lua_State *L, int index, struct node *n) {
	int vt = FUNC11(L, index);
	switch(vt) {
	case LUA_TNIL:
		n->valuetype = VALUETYPE_NIL;
		break;
	case LUA_TNUMBER:
		if (FUNC3(L, index)) {
			n->v.d = FUNC8(L, index);
			n->valuetype = VALUETYPE_INTEGER;
		} else {
			n->v.n = FUNC10(L, index);
			n->valuetype = VALUETYPE_REAL;
		}
		break;
	case LUA_TSTRING: {
		size_t sz = 0;
		const char * str = FUNC9(L, index, &sz);
		n->v.string = FUNC15(ctx, str, sz);
		n->valuetype = VALUETYPE_STRING;
		break;
	}
	case LUA_TBOOLEAN:
		n->v.boolean = FUNC7(L, index);
		n->valuetype = VALUETYPE_BOOLEAN;
		break;
	case LUA_TTABLE: {
		struct table *tbl = ctx->tbl;
		ctx->tbl = (struct table *)FUNC13(sizeof(struct table));
		if (ctx->tbl == NULL) {
			ctx->tbl = tbl;
			FUNC0(L, "memory error");
			// never get here
		}
		FUNC14(ctx->tbl, 0, sizeof(struct table));
		int absidx = FUNC1(L, index);

		FUNC4(L, convtable);
		FUNC6(L, absidx);
		FUNC5(L, ctx);

		FUNC2(L, 2, 0);

		n->v.tbl = ctx->tbl;
		n->valuetype = VALUETYPE_TABLE;

		ctx->tbl = tbl;

		break;
	}
	default:
		FUNC0(L, "Unsupport value type %s", FUNC12(L, vt));
		break;
	}
}