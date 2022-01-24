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
 int /*<<< orphan*/  KEY_HOOK ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const* const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(lua_State *L, lua_Debug *ar)
{
  static const char *const hooknames[] =
    {"call", "return", "line", "count", "tail return"};
  FUNC3(L, (void *)&KEY_HOOK);
  FUNC6(L, LUA_REGISTRYINDEX);
  if (FUNC1(L, -1)) {
    FUNC5(L, hooknames[(int)ar->event]);
    if (ar->currentline >= 0)
      FUNC2(L, ar->currentline);
    else FUNC4(L);
    FUNC0(L, 2, 0);
  }
}