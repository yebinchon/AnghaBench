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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void **FUNC9(lua_State *L, const char *path)
{
  void **plib;
  FUNC5(L, "LOADLIB: %s", path);
  FUNC1(L, LUA_REGISTRYINDEX);  /* check library in registry? */
  if (!FUNC2(L, -1)) {  /* is there an entry? */
    plib = (void **)FUNC8(L, -1);
  } else {  /* no entry yet; create one */
    FUNC4(L, 1);
    plib = (void **)FUNC3(L, sizeof(void *));
    *plib = NULL;
    FUNC0(L, "_LOADLIB");
    FUNC5(L, "LOADLIB: %s", path);
    FUNC6(L, -2);
    FUNC7(L, LUA_REGISTRYINDEX);
  }
  return plib;
}