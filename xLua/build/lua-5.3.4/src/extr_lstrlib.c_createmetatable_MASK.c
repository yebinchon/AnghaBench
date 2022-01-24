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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6 (lua_State *L) {
  FUNC0(L, 0, 1);  /* table to be metatable for strings */
  FUNC2(L, "");  /* dummy string */
  FUNC3(L, -2);  /* copy table */
  FUNC5(L, -2);  /* set table as metatable for strings */
  FUNC1(L, 1);  /* pop dummy string */
  FUNC3(L, -2);  /* get string library */
  FUNC4(L, -2, "__index");  /* metatable.__index = string */
  FUNC1(L, 1);  /* pop metatable */
}