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
 char const* FUNC0 (int /*<<< orphan*/ *,int) ; 
 char const* FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static const char *FUNC3 (lua_State *L, int idx) {
  const char *k = FUNC2(L, idx);
  if (k != NULL)
    return FUNC1(L, "%s", k);
  else
    return FUNC1(L, "(a %s)", FUNC0(L, idx));
}