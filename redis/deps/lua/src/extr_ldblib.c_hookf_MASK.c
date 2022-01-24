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
typedef  void lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  currentline; scalar_t__ event; } ;
typedef  TYPE_1__ lua_Debug ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_HOOK ; 
 int LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,char const* const) ; 
 int /*<<< orphan*/  FUNC8 (void*,int) ; 

__attribute__((used)) static void FUNC9 (lua_State *L, lua_Debug *ar) {
  static const char *const hooknames[] =
    {"call", "return", "line", "count", "tail return"};
  FUNC5(L, (void *)&KEY_HOOK);
  FUNC8(L, LUA_REGISTRYINDEX);
  FUNC5(L, L);
  FUNC8(L, -2);
  if (FUNC3(L, -1)) {
    FUNC7(L, hooknames[(int)ar->event]);
    if (ar->currentline >= 0)
      FUNC4(L, ar->currentline);
    else FUNC6(L);
    FUNC0(FUNC2(L, "lS", ar));
    FUNC1(L, 2, 0);
  }
}