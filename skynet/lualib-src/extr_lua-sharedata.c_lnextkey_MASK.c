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
struct table {int sizearray; scalar_t__* arraytype; int sizehash; int /*<<< orphan*/  L; struct node* hash; } ;
struct node {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;
typedef  int lua_Integer ;

/* Variables and functions */
 int KEYTYPE_INTEGER ; 
 int KEYTYPE_STRING ; 
 int LUA_TNUMBER ; 
 scalar_t__ VALUETYPE_NIL ; 
 scalar_t__ FUNC0 (char const*,size_t) ; 
 struct table* FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct node* FUNC2 (struct table*,scalar_t__,int,int,char const*,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct table*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct node*) ; 

__attribute__((used)) static int
FUNC11(lua_State *L) {
	struct table *tbl = FUNC1(L,1);
	if (FUNC5(L,2)) {
		if (tbl->sizearray > 0) {
			int i;
			for (i=0;i<tbl->sizearray;i++) {
				if (tbl->arraytype[i] != VALUETYPE_NIL) {
					FUNC6(L, i+1);
					return 1;
				}
			}
		}
		return FUNC9(L, tbl);
	}
	int kt = FUNC8(L,2);
	uint32_t keyhash;
	int key = 0;
	int keytype;
	size_t sz=0;
	const char *str = NULL;
	int sizearray = tbl->sizearray;
	if (kt == LUA_TNUMBER) {
		if (!FUNC4(L, 2)) {
			return 0;
		}
		key = (int)FUNC7(L, 2);
		if (key > 0 && key <= sizearray) {
			lua_Integer i;
			for (i=key;i<sizearray;i++) {
				if (tbl->arraytype[i] != VALUETYPE_NIL) {
					FUNC6(L, i+1);
					return 1;
				}
			}
			return FUNC9(L, tbl);
		}
		keyhash = (uint32_t)key;
		keytype = KEYTYPE_INTEGER;
	} else {
		str = FUNC3(L, 2, &sz);
		keyhash = FUNC0(str, sz);
		keytype = KEYTYPE_STRING;
	}

	struct node *n = FUNC2(tbl, keyhash, key, keytype, str, sz);
	if (n) {
		++n;
		int index = n-tbl->hash;
		if (index == tbl->sizehash) {
			return 0;
		}
		FUNC10(L, tbl->L, n);
		return 1;
	} else {
		return 0;
	}
}