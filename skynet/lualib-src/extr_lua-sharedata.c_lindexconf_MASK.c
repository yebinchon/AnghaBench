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
typedef  scalar_t__ uint32_t ;
struct table {int sizearray; int /*<<< orphan*/  L; int /*<<< orphan*/ * array; int /*<<< orphan*/ * arraytype; } ;
struct node {int /*<<< orphan*/  v; int /*<<< orphan*/  valuetype; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int KEYTYPE_INTEGER ; 
 int KEYTYPE_STRING ; 
 int LUA_TNUMBER ; 
 scalar_t__ FUNC0 (char const*,size_t) ; 
 struct table* FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct node* FUNC2 (struct table*,scalar_t__,int,int,char const*,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(lua_State *L) {
	struct table *tbl = FUNC1(L,1);
	int kt = FUNC8(L,2);
	uint32_t keyhash;
	int key = 0;
	int keytype;
	size_t sz = 0;
	const char * str = NULL;
	if (kt == LUA_TNUMBER) {
		if (!FUNC5(L, 2)) {
			return FUNC4(L, "Invalid key %f", FUNC7(L, 2));
		}
		key = (int)FUNC6(L, 2);
		if (key > 0 && key <= tbl->sizearray) {
			--key;
			FUNC9(L, tbl->L, tbl->arraytype[key], &tbl->array[key]);
			return 1;
		}
		keytype = KEYTYPE_INTEGER;
		keyhash = (uint32_t)key;
	} else {
		str = FUNC3(L, 2, &sz);
		keyhash = FUNC0(str, sz);
		keytype = KEYTYPE_STRING;
	}

	struct node *n = FUNC2(tbl, keyhash, key, keytype, str, sz);
	if (n) {
		FUNC9(L, tbl->L, n->valuetype, &n->v);
		return 1;
	} else {
		return 0;
	}
}