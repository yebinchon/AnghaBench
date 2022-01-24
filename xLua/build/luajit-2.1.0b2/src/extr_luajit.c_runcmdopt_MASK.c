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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static int FUNC6(lua_State *L, const char *opt)
{
  int narg = 0;
  if (opt && *opt) {
    for (;;) {  /* Split arguments. */
      const char *p = FUNC5(opt, ',');
      narg++;
      if (!p) break;
      if (p == opt)
	FUNC2(L);
      else
	FUNC1(L, opt, (size_t)(p - opt));
      opt = p + 1;
    }
    if (*opt)
      FUNC3(L, opt);
    else
      FUNC2(L);
  }
  return FUNC4(L, FUNC0(L, narg, 0, 0));
}