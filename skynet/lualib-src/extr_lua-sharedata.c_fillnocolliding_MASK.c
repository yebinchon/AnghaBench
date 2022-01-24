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
typedef  size_t uint32_t ;
struct table {size_t sizehash; struct node* hash; } ;
struct node {scalar_t__ valuetype; int key; int keytype; size_t keyhash; int next; int nocolliding; } ;
struct context {struct table* tbl; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ VALUETYPE_NIL ; 
 int /*<<< orphan*/  FUNC0 (struct context*,int /*<<< orphan*/ *,int,int*,size_t*,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct context*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct context*,int /*<<< orphan*/ *,int,struct node*) ; 

__attribute__((used)) static void
FUNC6(lua_State *L, struct context *ctx) {
	struct table * tbl = ctx->tbl;
	FUNC3(L);
	while (FUNC1(L, 1) != 0) {
		int key;
		int keytype;
		uint32_t keyhash;
		if (!FUNC0(ctx, L, -2, &key, &keyhash, &keytype)) {
			FUNC4(ctx, L, -1, key);
		} else {
			struct node * n = &tbl->hash[keyhash % tbl->sizehash];
			if (n->valuetype == VALUETYPE_NIL) {
				n->key = key;
				n->keytype = keytype;
				n->keyhash = keyhash;
				n->next = -1;
				n->nocolliding = 1;
				FUNC5(ctx, L, -1, n);	// set n->v , n->valuetype
			}
		}
		FUNC2(L,1);
	}
}