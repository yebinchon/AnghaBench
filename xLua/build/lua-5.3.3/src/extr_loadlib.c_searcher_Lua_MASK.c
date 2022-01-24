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
 int /*<<< orphan*/  LUA_LSUBSEP ; 
 scalar_t__ LUA_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC4 (lua_State *L) {
  const char *filename;
  const char *name = FUNC2(L, 1);
  filename = FUNC1(L, name, "path", LUA_LSUBSEP);
  if (filename == NULL) return 1;  /* module not found in this path */
  return FUNC0(L, (FUNC3(L, filename) == LUA_OK), filename);
}