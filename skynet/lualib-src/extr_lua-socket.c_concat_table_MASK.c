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
 scalar_t__ LUA_TNIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

__attribute__((used)) static void
FUNC6(lua_State *L, int index, void *buffer, size_t tlen) {
	char *ptr = buffer;
	int i;
	for (i=1;FUNC1(L, index, i) != LUA_TNIL; ++i) {
		size_t len;
		const char * str = FUNC3(L, -1, &len);
		if (str == NULL || tlen < len) {
			break;
		}
		FUNC4(ptr, str, len);
		ptr += len;
		tlen -= len;
		FUNC2(L,1);
	}
	if (tlen != 0) {
		FUNC5(buffer);
		FUNC0(L, "Invalid strings table");
	}
	FUNC2(L,1);
}