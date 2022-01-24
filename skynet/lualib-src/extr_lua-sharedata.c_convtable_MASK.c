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
typedef  union value {int dummy; } value ;
typedef  void* uint8_t ;
struct table {int sizearray; int sizehash; struct node* hash; union value* array; void** arraytype; int /*<<< orphan*/  L; } ;
struct node {scalar_t__ nocolliding; void* valuetype; } ;
struct context {int /*<<< orphan*/  L; struct table* tbl; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 void* VALUETYPE_NIL ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct context*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct context* FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct context*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC10(lua_State *L) {
	int i;
	struct context *ctx = FUNC7(L,2);
	struct table *tbl = ctx->tbl;

	tbl->L = ctx->L;

	int sizearray = FUNC6(L, 1);
	if (sizearray) {
		tbl->arraytype = (uint8_t *)FUNC8(sizearray * sizeof(uint8_t));
		if (tbl->arraytype == NULL) {
			goto memerror;
		}
		for (i=0;i<sizearray;i++) {
			tbl->arraytype[i] = VALUETYPE_NIL;
		}
		tbl->array = (union value *)FUNC8(sizearray * sizeof(union value));
		if (tbl->array == NULL) {
			goto memerror;
		}
		tbl->sizearray = sizearray;
	}
	int sizehash = FUNC0(L, sizearray);
	if (sizehash) {
		tbl->hash = (struct node *)FUNC8(sizehash * sizeof(struct node));
		if (tbl->hash == NULL) {
			goto memerror;
		}
		for (i=0;i<sizehash;i++) {
			tbl->hash[i].valuetype = VALUETYPE_NIL;
			tbl->hash[i].nocolliding = 0;
		}
		tbl->sizehash = sizehash;

		FUNC2(L, ctx);
		FUNC1(L, ctx);
	} else {
		int i;
		for (i=1;i<=sizearray;i++) {
			FUNC5(L, 1, i);
			FUNC9(ctx, L, -1, i);
			FUNC4(L,1);
		}
	}

	return 0;
memerror:
	return FUNC3(L, "memory error");
}