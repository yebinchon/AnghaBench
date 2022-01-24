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
 int /*<<< orphan*/  LUA_FILEHANDLE ; 
 int /*<<< orphan*/  flib ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void FUNC5 (lua_State *L) {
  FUNC0(L, LUA_FILEHANDLE);  /* create metatable for file handles */
  FUNC3(L, -1);  /* push metatable */
  FUNC4(L, -2, "__index");  /* metatable.__index = metatable */
  FUNC1(L, flib, 0);  /* add file methods to new metatable */
  FUNC2(L, 1);  /* pop new metatable */
}