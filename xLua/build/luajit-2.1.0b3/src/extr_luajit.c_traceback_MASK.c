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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(lua_State *L)
{
  if (!FUNC3(L, 1)) { /* Non-string error object? Try metamethod. */
    if (FUNC2(L, 1) ||
	!FUNC0(L, 1, "__tostring") ||
	!FUNC3(L, -1))
      return 1;  /* Return non-string error object. */
    FUNC4(L, 1);  /* Replace object by result of __tostring metamethod. */
  }
  FUNC1(L, L, FUNC5(L, 1), 1);
  return 1;
}