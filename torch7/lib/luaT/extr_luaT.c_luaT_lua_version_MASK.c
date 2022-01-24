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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

int FUNC7(lua_State *L)
{
  FUNC0(L, 1);

  if(FUNC2(L, 1))
  {
    const char *tname = FUNC1(L, 1, NULL);
    if(tname)
    {
      FUNC3(L, tname);
      FUNC5(L, "__version");
      FUNC6(L, -2);
      return 1;
    }
    return 0;
  }
  else if(FUNC4(L, 1))
  {
    FUNC5(L, "__version");
    FUNC6(L, -2);
    return 1;
  }
  return 0;
}