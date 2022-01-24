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
 int /*<<< orphan*/  LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (struct bson*) ; 
 int /*<<< orphan*/  FUNC1 (struct bson*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  encode_bson ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct bson*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC10(lua_State *L) {
	struct bson b;
	FUNC9(L,1);
	FUNC3(L, 1, LUA_TTABLE);
	FUNC0(&b);
	FUNC6(L, encode_bson);
	FUNC8(L, 1);
	FUNC7(L, &b);
	if (FUNC5(L, 2, 1, 0) != LUA_OK) {
		FUNC1(&b);
		return FUNC4(L);
	}
	FUNC1(&b);
	FUNC2(L);
	return 1;
}