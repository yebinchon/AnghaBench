#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ lua_Debug ;

/* Variables and functions */
 int LUA_MASKCALL ; 
 int LUA_MASKRET ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TFUNCTION ; 
 int /*<<< orphan*/  hook ; 
 int /*<<< orphan*/  hook_index ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11(lua_State *L) {
	lua_Debug ar;
	
	if (FUNC1(L)) {
		FUNC3(L, 0, &ar);
		FUNC2(L, "n", &ar);
		
		FUNC6(L, &hook_index);
		FUNC8(L, LUA_REGISTRYINDEX);
		
		if (FUNC10(L, -1) != LUA_TFUNCTION){
			FUNC4(L, 1);
			return;
        }
		
		FUNC7(L, "return");
		FUNC5(L, "[?%s]", ar.name);
		FUNC7(L, "[C#]");
		
		FUNC9(L, 0, 0, 0);
		FUNC0(L, 3, 0);
		FUNC9(L, hook, LUA_MASKCALL | LUA_MASKRET, 0);
	}
}