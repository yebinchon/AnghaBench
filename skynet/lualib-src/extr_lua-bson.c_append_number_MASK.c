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
typedef  int /*<<< orphan*/  lua_Number ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  BSON_INT32 ; 
 int /*<<< orphan*/  BSON_INT64 ; 
 int /*<<< orphan*/  BSON_REAL ; 
 int /*<<< orphan*/  FUNC0 (struct bson*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bson*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bson*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bson*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct bson *bs, lua_State *L, const char *key, size_t sz) {
	if (FUNC2(L, -1)) {
		int64_t i = FUNC3(L, -1);
		if (FUNC1(i)) {
			FUNC0(bs, L, BSON_INT32, key, sz);
			FUNC6(bs, i);
		} else {
			FUNC0(bs, L, BSON_INT64, key, sz);
			FUNC7(bs, i);
		}
	} else {
		lua_Number d = FUNC4(L,-1);
		FUNC0(bs, L, BSON_REAL, key, sz);
		FUNC5(bs, d);
	}
}