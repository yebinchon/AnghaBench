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
 int /*<<< orphan*/  LUA_MULTRET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

int FUNC11(lua_State *L)
{
  if(!FUNC6(L, 1))
    FUNC0(L, "internal error in __call: not a constructor table");

  if(!FUNC2(L, 1))
    FUNC0(L, "internal error in __call: no metatable available");

  FUNC8(L, "__new");
  FUNC9(L, -2);

  if(FUNC5(L, -1))
    FUNC0(L, "no constructor available");

  FUNC10(L, 1); /* remove constructor atable */
  FUNC4(L, 1); /* insert constructor */
  FUNC7(L, 1);    /* remove fancy metatable */

  FUNC1(L, FUNC3(L)-1, LUA_MULTRET);
  return FUNC3(L);
}