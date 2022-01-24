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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

int FUNC8(lua_State *L)
{
  if(!FUNC3(L, 1))
    FUNC0(L, "internal error in __newindex: not a constructor table");

  if(!FUNC1(L, 1))
    FUNC0(L, "internal error in __newindex: no metatable available");

  FUNC5(L, "__metatable");
  FUNC6(L, -2);

  if(!FUNC3(L, -1))
    FUNC0(L, "internal error in __newindex: no metaclass available");

  FUNC2(L, 2);
  FUNC4(L, 1); /* remove the metatable over the constructor table */

  FUNC7(L, -3);

  return 0;
}