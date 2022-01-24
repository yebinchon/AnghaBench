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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {char* member_0; int /*<<< orphan*/ * member_1; } ;
typedef  TYPE_1__ luaL_Reg ;

/* Variables and functions */
 int /*<<< orphan*/ * ldecode ; 
 int /*<<< orphan*/  llen ; 
 int /*<<< orphan*/ * lmakeindex ; 
 int /*<<< orphan*/  lreplace ; 
 int /*<<< orphan*/  ltostring ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(lua_State *L) {
	if (FUNC1(L, "bson")) {
		luaL_Reg l[] = {
			{ "decode", ldecode },
			{ "makeindex", lmakeindex },
			{ NULL, NULL },
		};
		FUNC0(L,l);
		FUNC3(L, -2, "__index");
		FUNC2(L, ltostring);
		FUNC3(L, -2, "__tostring");
		FUNC2(L, llen);
		FUNC3(L, -2, "__len");
		FUNC2(L, lreplace);
		FUNC3(L, -2, "__newindex");
	}
	FUNC4(L, -2);
}