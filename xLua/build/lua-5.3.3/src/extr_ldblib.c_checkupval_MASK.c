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
 int /*<<< orphan*/  LUA_TFUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC4 (lua_State *L, int argf, int argnup) {
  int nup = (int)FUNC1(L, argnup);  /* upvalue index */
  FUNC2(L, argf, LUA_TFUNCTION);  /* closure */
  FUNC0(L, (FUNC3(L, argf, nup) != NULL), argnup,
                   "invalid upvalue index");
  return nup;
}