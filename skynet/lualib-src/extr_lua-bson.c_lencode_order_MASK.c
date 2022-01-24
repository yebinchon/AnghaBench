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
 scalar_t__ LUA_OK ; 
 int /*<<< orphan*/  FUNC0 (struct bson*) ; 
 int /*<<< orphan*/  FUNC1 (struct bson*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  encode_bson_byorder ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct bson*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC11(lua_State *L) {
	struct bson b;
	int n = FUNC5(L);
	if (n%2 != 0) {
		return FUNC3(L, "Invalid ordered dict");
	}
	FUNC0(&b);
	FUNC9(L, 1);	// copy the first arg to n
	FUNC7(L, encode_bson_byorder);
	FUNC10(L, 1);
	FUNC8(L, &b);
	if (FUNC6(L, n+1, 1, 0) != LUA_OK) {
		FUNC1(&b);
		return FUNC4(L);
	}
	FUNC1(&b);
	FUNC2(L);
	return 1;
}