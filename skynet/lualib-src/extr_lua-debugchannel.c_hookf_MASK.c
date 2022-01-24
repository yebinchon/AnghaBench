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
struct TYPE_3__ {int /*<<< orphan*/  currentline; scalar_t__ event; } ;
typedef  TYPE_1__ lua_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  HOOKKEY ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TFUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const* const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10 (lua_State *L, lua_Debug *ar) {
  static const char *const hooknames[] =
    {"call", "return", "line", "count", "tail call"};
  FUNC7(L, LUA_REGISTRYINDEX, &HOOKKEY);
  FUNC5(L);
  if (FUNC6(L, -2) == LUA_TFUNCTION) {  /* is there a hook function? */
    FUNC4(L, hooknames[(int)ar->event]);  /* push event name */
    if (ar->currentline >= 0)
      FUNC2(L, ar->currentline);  /* push current line */
    else FUNC3(L);
    FUNC0(L, 2, 1);  /* call hook function */
	int yield = FUNC8(L, -1);
	FUNC1(L,1);
	if (yield) {
		FUNC9(L, 0);
	}
  }
}