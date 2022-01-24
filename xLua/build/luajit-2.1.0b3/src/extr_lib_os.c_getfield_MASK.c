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
 int /*<<< orphan*/  LJ_ERR_OSDATEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(lua_State *L, const char *key, int d)
{
  int res;
  FUNC1(L, -1, key);
  if (FUNC2(L, -1)) {
    res = (int)FUNC4(L, -1);
  } else {
    if (d < 0)
      FUNC0(L, LJ_ERR_OSDATEF, key);
    res = d;
  }
  FUNC3(L, 1);
  return res;
}