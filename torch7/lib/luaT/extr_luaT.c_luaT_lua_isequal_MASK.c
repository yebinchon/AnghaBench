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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 void** FUNC6 (int /*<<< orphan*/ *,int) ; 

int FUNC7(lua_State *L)
{
  if(FUNC3(L, 1) && FUNC3(L, 2))
  {
    void **u1, **u2;
    FUNC0(L, FUNC1(L, 1), 1, "Torch object expected");
    FUNC0(L, FUNC1(L, 2), 2, "Torch object expected");

    u1 = FUNC6(L, 1);
    u2 = FUNC6(L, 2);
    if(*u1 == *u2)
      FUNC4(L, 1);
    else
      FUNC4(L, 0);
  }
  else if(FUNC2(L, 1) && FUNC2(L, 2))
    FUNC4(L, FUNC5(L, 1, 2));
  else
    FUNC4(L, 0);
  return 1;
}