#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  used_in ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {char* short_src; int linedefined; int lastlinedefined; } ;
typedef  TYPE_1__ lua_Debug ;

/* Variables and functions */
 scalar_t__ LUA_TFUNCTION ; 
 scalar_t__ LUA_TTABLE ; 
 int /*<<< orphan*/  MARKED_TABLE ; 
 int /*<<< orphan*/  RT_UPVALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void const*,char const*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*,int,int) ; 

__attribute__((used)) static void FUNC13(lua_State *L, lua_State *dL) {
	const void *p = FUNC7(L, -1);
	int i;
	lua_Debug ar;
	char used_in[128];
	const char *name;
	
	
	if (!FUNC0(dL, p)) {
		FUNC11(dL, p, 0); //已经在table里头算了
		
		FUNC5(L, -1);
		FUNC1(L, ">S", &ar);
		FUNC12(used_in, sizeof(used_in) - 1, "%s:%d~%d", ar.short_src, ar.linedefined, ar.lastlinedefined);
		used_in[sizeof(used_in) - 1] = 0;
		
		for (i=1;;i++) {
			name = FUNC2(L,-1,i);
			if (name == NULL)
				break;
			p = FUNC7(L, -1);
			
			if (*name != '\0' && LUA_TTABLE == FUNC8(L, -1)) {
				FUNC9(dL, p, name, RT_UPVALUE, used_in, 1);
				FUNC3(dL, MARKED_TABLE);
				FUNC10(L, dL);
				FUNC6(dL, MARKED_TABLE);
			} else if (LUA_TFUNCTION == FUNC8(L, -1)) {
				FUNC13(L, dL);
			}
			FUNC4(L, 1);
		}
	}
}