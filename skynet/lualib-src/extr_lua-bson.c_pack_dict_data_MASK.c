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
#define  LUA_TNUMBER 129 
#define  LUA_TSTRING 128 
 int /*<<< orphan*/  FUNC0 (struct bson*,int /*<<< orphan*/ *,char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(lua_State *L, struct bson *b, int depth, int kt) {
	const char * key = NULL;
	size_t sz;
	switch(kt) {
	case LUA_TNUMBER:
		FUNC1(L, "Bson dictionary's key can't be number");
		break;
	case LUA_TSTRING:
		key = FUNC3(L,-2,&sz);
		FUNC0(b, L, key, sz, depth);
		FUNC2(L,1);
		break;
	default:
		FUNC1(L, "Invalid key type : %s", FUNC4(L, kt));
		return;
	}
}