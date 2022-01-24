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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 char const* FUNC7 (int /*<<< orphan*/ *,int,size_t*) ; 

__attribute__((used)) static const char *FUNC8 (lua_State *L, void *ud, size_t *size) {
  (void)ud;  /* to avoid warnings */
  FUNC0(L, 2, "too many nested functions");
  FUNC5(L, 1);  /* get function */
  FUNC2(L, 0, 1);  /* call it */
  if (FUNC3(L, -1)) {
    *size = 0;
    return NULL;
  }
  else if (FUNC4(L, -1)) {
    FUNC6(L, 3);  /* save string in a reserved stack slot */
    return FUNC7(L, 3, size);
  }
  else FUNC1(L, "reader function must return a string");
  return NULL;  /* to avoid warnings */
}