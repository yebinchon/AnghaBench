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
 int /*<<< orphan*/  ROOT_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char const*) ; 

__attribute__((used)) static void FUNC11(lua_State *L, const void *p, const char *name, int type, const char *used_in, int need_stat) {
	FUNC8(L, ROOT_TABLE, p);
	if (FUNC1(L, -1)) {
		FUNC3(L, 1);
		FUNC2(L); // -- root
		FUNC2(L); // root.used_in
		if (used_in != NULL) {
			FUNC4(L, 1);
			FUNC10(L, -2, used_in);
		}
		FUNC10(L, -2, "used_in");
		if (need_stat) {
		    FUNC6(L, name);
		    FUNC10(L, -2, "name");
		    FUNC5(L, type);
		    FUNC10(L, -2, "type");
		}
		
		FUNC7(L, -1);
		FUNC9(L, ROOT_TABLE, p); //ROOT_TABLE[p] = root
	} else {
		if (used_in != NULL) {
			FUNC0(L, -1, "used_in");
			FUNC4(L, 1);
			FUNC10(L, -2, used_in);
			FUNC3(L, 1);
		}
	}
}