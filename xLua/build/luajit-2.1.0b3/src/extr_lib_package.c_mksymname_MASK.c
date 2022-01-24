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
 int /*<<< orphan*/ * LUA_IGMARK ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*,char*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC4(lua_State *L, const char *modname,
			     const char *prefix)
{
  const char *funcname;
  const char *mark = FUNC3(modname, *LUA_IGMARK);
  if (mark) modname = mark + 1;
  funcname = FUNC0(L, modname, ".", "_");
  funcname = FUNC1(L, prefix, funcname);
  FUNC2(L, -2);  /* remove 'gsub' result */
  return funcname;
}