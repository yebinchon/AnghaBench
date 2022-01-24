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
typedef  scalar_t__ uint32_t ;
struct context {TYPE_1__* tbl; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int sizearray; } ;

/* Variables and functions */
 int KEYTYPE_INTEGER ; 
 int KEYTYPE_STRING ; 
 int LUA_TNUMBER ; 
 scalar_t__ FUNC0 (char const*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct context*,char const*,size_t) ; 

__attribute__((used)) static int
FUNC5(struct context * ctx, lua_State *L, int index, int *key, uint32_t *keyhash, int *keytype) {
	int sizearray = ctx->tbl->sizearray;
	int kt = FUNC3(L, index);
	if (kt == LUA_TNUMBER) {
		*key = FUNC1(L, index);
		if (*key > 0 && *key <= sizearray) {
			return 0;
		}
		*keyhash = (uint32_t)*key;
		*keytype = KEYTYPE_INTEGER;
	} else {
		size_t sz = 0;
		const char * s = FUNC2(L, index, &sz);
		*keyhash = FUNC0(s, sz);
		*key = FUNC4(ctx, s, sz);
		*keytype = KEYTYPE_STRING;
	}
	return 1;
}