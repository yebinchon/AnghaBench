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
struct TYPE_4__ {int event; char* what; scalar_t__ linedefined; int /*<<< orphan*/  short_src; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ lua_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  hook_index ; 
 int /*<<< orphan*/ * hooknames ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(lua_State *L, lua_Debug *ar)
{
	int event;
	
	FUNC3(L, &hook_index);
	FUNC5(L, LUA_REGISTRYINDEX);

	event = ar->event;
	FUNC4(L, hooknames[event]);
  
	FUNC1(L, "nS", ar);
	if (*(ar->what) == 'C') {
		FUNC2(L, "[?%s]", ar->name);
	} else {
		FUNC2(L, "%s:%d", ar->short_src, ar->linedefined > 0 ? ar->linedefined : 0);
	}

	FUNC0(L, 2, 0);
}