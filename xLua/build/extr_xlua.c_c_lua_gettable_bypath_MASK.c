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
 scalar_t__ LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (char const*,char) ; 

__attribute__((used)) static int FUNC8(lua_State* L) {
	size_t len = 0;
	const char * pos = NULL;
	const char * path = FUNC5(L, 2, &len);
	FUNC3(L, 1);
	do {
		pos = FUNC7(path, '.');
		if (NULL == pos) {
			FUNC1(L, path, len);
		} else {
			FUNC1(L, path, pos - path);
			len = len - (pos - path + 1);
			path = pos + 1;
		}
		FUNC0(L, -2);
		if (FUNC6(L, -1) != LUA_TTABLE) {
			if (NULL != pos) { // not found in path
				FUNC2(L);
			}
			break;
		}
		FUNC4(L, -2);
	} while(pos);
    return 1;
}