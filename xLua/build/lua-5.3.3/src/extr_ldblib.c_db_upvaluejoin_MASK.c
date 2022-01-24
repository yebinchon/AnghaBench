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
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int,int) ; 

__attribute__((used)) static int FUNC4 (lua_State *L) {
  int n1 = FUNC0(L, 1, 2);
  int n2 = FUNC0(L, 3, 4);
  FUNC1(L, !FUNC2(L, 1), 1, "Lua function expected");
  FUNC1(L, !FUNC2(L, 3), 3, "Lua function expected");
  FUNC3(L, 1, n1, 3, n2);
  return 0;
}