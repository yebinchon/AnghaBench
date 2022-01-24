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
struct bson {int dummy; } ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  BSON_ARRAY ; 
 int /*<<< orphan*/  BSON_DOCUMENT ; 
 scalar_t__ LUA_TNIL ; 
 int MAX_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (struct bson*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC9 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct bson*,int,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct bson*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct bson*,int) ; 

__attribute__((used)) static void
FUNC14(struct bson *bs, lua_State *L, const char *key, size_t sz, int depth) {
	if (depth > MAX_DEPTH) {
		FUNC3(L, "Too depth while encoding bson");
	}
	FUNC2(L, 16, NULL);	// reserve enough stack space to pack table
	if (FUNC4(L, -1, "__len") != LUA_TNIL) {
		FUNC8(L, -2);
		FUNC5(L, 1, 1);
		if (!FUNC6(L, -1)) {
			FUNC3(L, "__len should return integer");
		}
		size_t len = FUNC10(L, -1);
		FUNC7(L, 1);
		FUNC0(bs, L, BSON_ARRAY, key, sz);
		FUNC11(L, bs, depth, len);
	} else if (FUNC4(L, -1, "__pairs") != LUA_TNIL) {
		FUNC0(bs, L, BSON_DOCUMENT, key, sz);
		FUNC12(L, bs, depth);
	} else if (FUNC1(L)) {
		FUNC0(bs, L, BSON_ARRAY, key, sz);
		FUNC11(L, bs, depth, FUNC9(L, -1));
	} else {
		FUNC0(bs, L, BSON_DOCUMENT, key, sz);
		FUNC13(L, bs, depth);
	}
}