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
 int LUA_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5 (lua_State *L, const char *name) {
  int status;
  FUNC1(L, "require");
  FUNC2(L, name);
  status = FUNC0(L, 1, 1);  /* call 'require(name)' */
  if (status == LUA_OK)
    FUNC3(L, name);  /* global[name] = require return */
  return FUNC4(L, status);
}