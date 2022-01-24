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
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 char* FUNC10 (char const*,char) ; 

__attribute__((used)) static int FUNC11(lua_State* L) {
    size_t len = 0;
	const char * pos = NULL;
	const char * path = FUNC7(L, 2, &len);
	FUNC4(L, 1);
	do {
		pos = FUNC10(path, '.');
		if (NULL == pos) { // last
			FUNC3(L, path, len);
			FUNC4(L, 3);
			FUNC6(L, -3);
			FUNC2(L, 1);
			break;
		} else {
			FUNC3(L, path, pos - path);
			len = len - (pos - path + 1);
			path = pos + 1;
		}
		FUNC1(L, -2);
		if (FUNC9(L, -1) != LUA_TTABLE) {
			return FUNC0(L, "can not set value to %s", FUNC8(L, 2));
		}
		FUNC5(L, -2);
	} while(pos);
    return 0;
}