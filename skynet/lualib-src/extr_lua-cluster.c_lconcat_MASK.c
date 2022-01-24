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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_TNUMBER ; 
 scalar_t__ LUA_TSTRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(lua_State *L) {
	if (!FUNC1(L,1))
		return 0;
	if (FUNC0(L,1,1) != LUA_TNUMBER)
		return 0;
	int sz = FUNC5(L,-1);
	FUNC2(L,1);
	char * buff = FUNC9(sz);
	int idx = 2;
	int offset = 0;
	while(FUNC0(L,1,idx) == LUA_TSTRING) {
		size_t s;
		const char * str = FUNC6(L, -1, &s);
		if (s+offset > sz) {
			FUNC8(buff);
			return 0;
		}
		FUNC7(buff+offset, str, s);
		FUNC2(L,1);
		offset += s;
		++idx;
	}
	if (offset != sz) {
		FUNC8(buff);
		return 0;
	}
	// buff/sz will send to other service, See clusterd.lua
	FUNC4(L, buff);
	FUNC3(L, sz);
	return 2;
}