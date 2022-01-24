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
 int /*<<< orphan*/  RESERVEDSLOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static const char *FUNC9 (lua_State *L, void *ud, size_t *size) {
  (void)(ud);  /* not used */
  FUNC0(L, 2, "too many nested functions");
  FUNC6(L, 1);  /* get function */
  FUNC2(L, 0, 1);  /* call it */
  if (FUNC3(L, -1)) {
    FUNC5(L, 1);  /* pop result */
    *size = 0;
    return NULL;
  }
  else if (!FUNC4(L, -1))
    FUNC1(L, "reader function must return a string");
  FUNC7(L, RESERVEDSLOT);  /* save string in reserved slot */
  return FUNC8(L, RESERVEDSLOT, size);
}