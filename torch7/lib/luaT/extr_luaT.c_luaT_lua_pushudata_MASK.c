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
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 

int FUNC8(lua_State *L)
{
  void *udata = NULL;
  const char *tname = FUNC1(L, 2);

  if(FUNC7(L, 1) == 10)
    udata = *((void**)FUNC6(L, 1));
  else if(FUNC2(L, 1))
    udata = ((void**)FUNC6(L, 1))[4];
  else if(FUNC4(L, 1))
    udata = (void*)(uintptr_t)FUNC5(L, 1);
  else
    FUNC0(L, 1, "expecting number or cdata");

  FUNC3(L, udata, tname);

  return 1;
}