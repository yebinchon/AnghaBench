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
typedef  scalar_t__ lua_Integer ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ MAXLIM ; 
 int /*<<< orphan*/  MAXSTACKIDX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4 (lua_State *L) {
  lua_Integer lim = FUNC1(L, 1);
  FUNC0(L, 0 < lim && lim <= MAXLIM, 1, "out of range");
  FUNC3(L, 1);
  FUNC2(L, LUA_REGISTRYINDEX, MAXSTACKIDX);
  return 0;
}