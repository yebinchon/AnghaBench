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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
#define  LUA_TBOOLEAN 132 
#define  LUA_TNIL 131 
#define  LUA_TNUMBER 130 
#define  LUA_TSTRING 129 
#define  LUA_TTABLE 128 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(lua_State *L) {
	int t = FUNC4(L,1);
	int type = 0;
	switch (t) {
	case LUA_TNUMBER:
		type = 1;
		break;
	case LUA_TBOOLEAN:
		type = 2;
		break;
	case LUA_TTABLE:
		type = 3;
		break;
	case LUA_TNIL:
		FUNC2(L, FUNC6(4));
		return 1;
	case LUA_TSTRING: {
		size_t len = 0;
		const char * str = FUNC3(L,1,&len);
		if (str[0] == 0 && len >= 2) {
			return FUNC0(L, (uint8_t)str[1], (const uint8_t *)str+2, len-2);
		} else {
			type = 5;
			break;
		}
	}
	default:
		return FUNC1(L, "Invalid type %s",FUNC5(L,t));
	}
	FUNC2(L, FUNC6(type));
	FUNC2(L,1);
	return 2;
}