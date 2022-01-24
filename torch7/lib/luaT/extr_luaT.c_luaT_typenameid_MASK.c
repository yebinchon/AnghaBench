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
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 

const char *FUNC5(lua_State *L, const char *tname)
{
  if(FUNC0(L, tname))
  {
    const char *tnameid = NULL;
    FUNC3(L, LUA_REGISTRYINDEX);
    if(FUNC1(L, -1))
      tnameid = FUNC4(L, -1);
    FUNC2(L, 1); /* the string/nil */
    return tnameid;
  }
  return NULL;
}