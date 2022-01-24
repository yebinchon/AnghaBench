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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8 (lua_State *L) {
  for (;;) {
    char buffer[250];
    FUNC5("%s", "lua_debug> ");
    if (FUNC0(buffer, sizeof(buffer), stdin) == 0 ||
        FUNC6(buffer, "cont\n") == 0)
      return 0;
    if (FUNC1(L, buffer, FUNC7(buffer), "=(debug command)") ||
        FUNC2(L, 0, 0, 0))
      FUNC5("%s\n", FUNC4(L, -1));
    FUNC3(L, 0);  /* remove eventual returns */
  }
}