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
 int TAB_L ; 
 int TAB_R ; 
 int TAB_W ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5 (lua_State *L, int arg, int what) {
  if (FUNC4(L, arg) != LUA_TTABLE) {  /* is it not a table? */
    int n = 1;  /* number of elements to pop */
    if (FUNC2(L, arg) &&  /* must have metatable */
        (!(what & TAB_R) || FUNC0(L, "__index", ++n)) &&
        (!(what & TAB_W) || FUNC0(L, "__newindex", ++n)) &&
        (!(what & TAB_L) || FUNC0(L, "__len", ++n))) {
      FUNC3(L, n);  /* pop metatable and tested metamethods */
    }
    else
      FUNC1(L, arg, LUA_TTABLE);  /* force an error */
  }
}