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
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3 (lua_State *L, int stat, const char *filename) {
  if (stat) {  /* module loaded successfully? */
    FUNC1(L, filename);  /* will be 2nd argument to module */
    return 2;  /* return open function and file name */
  }
  else
    return FUNC0(L, "error loading module '%s' from file '%s':\n\t%s",
                          FUNC2(L, 1), filename, FUNC2(L, -1));
}