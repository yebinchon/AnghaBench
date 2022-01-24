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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static void FUNC5 (lua_State *L, const char *modname) {
  const char *dot;
  FUNC2(L, -1);
  FUNC3(L, -2, "_M");  /* module._M = module */
  FUNC1(L, modname);
  FUNC3(L, -2, "_NAME");
  dot = FUNC4(modname, '.');  /* look for last dot in module name */
  if (dot == NULL) dot = modname;
  else dot++;
  /* set _PACKAGE as package name (full module name minus last part) */
  FUNC0(L, modname, dot - modname);
  FUNC3(L, -2, "_PACKAGE");
}