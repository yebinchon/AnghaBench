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
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 scalar_t__ LUA_TLIGHTUSERDATA ; 
 int ROOT_TABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC20(lua_State* L, lua_State* dL) {
	int size = 0;
	int i = 0;
	luaL_Buffer b;
	
	FUNC6(L);
	
	FUNC10(dL);
	while (FUNC7(dL, ROOT_TABLE) != 0) {
		FUNC4(dL, -1, "name");
		if (FUNC5(dL, -1)) {
			FUNC8(dL, 2);
			continue;
		} else {
			FUNC8(dL, 1);
		}
		
		FUNC6(L);
		size = 0;
		
		FUNC10(dL);
		while (FUNC7(dL, -2) != 0) {
			if (LUA_TLIGHTUSERDATA == FUNC19(dL, -2)) { 
				size += (int)FUNC15(dL, -1);
			} 
			
			FUNC8(dL, 1);
		}
		FUNC11(L, size);
		FUNC14(L, -2, "size");
		
		FUNC9(L, "%p", FUNC18(dL, -2));
		FUNC14(L, -2, "pointer");
		
		FUNC4(dL, -1, "name");
		FUNC12(L, FUNC17(dL, -1));
		FUNC8(dL, 1);
		FUNC14(L, -2, "name");
		
		FUNC4(dL, -1, "type");
		FUNC11(L, FUNC16(dL, -1));
		FUNC8(dL, 1);
		FUNC14(L, -2, "type");
		
		FUNC4(dL, -1, "used_in");
		FUNC2(L, &b);
		FUNC10(dL);
		while (FUNC7(dL, -2) != 0) {
			FUNC8(dL, 1);
			FUNC1(&b, FUNC17(dL, -1));
			FUNC0(&b, ';');
		}
		FUNC3(&b);
		FUNC8(dL, 1);
		FUNC14(L, -2, "used_in");
		
		++i;
		FUNC13(L, -2, i);
		
		FUNC8(dL, 1);
	}
}