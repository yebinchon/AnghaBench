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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 void** FUNC7 (int /*<<< orphan*/ *,int) ; 

void *FUNC8(lua_State *L, int ud, const char *tname)
{
  void **p = FUNC7(L, ud);
  if(p != NULL) /* value is a userdata? */
  {
    if(!FUNC1(L, tname))
      FUNC0(L, "Torch internal problem: cannot find metatable for type <%s>", tname);

    /* initialize the table we want to get the metatable on */
    /* note that we have to be careful with indices, as we just inserted stuff */
    FUNC4(L, (ud < 0 ? ud - 1 : ud));
    while(FUNC2(L, -1)) /* get the next metatable */
    {
      FUNC6(L, -2); /* remove the previous metatable [or object, if first time] */
      if(FUNC5(L, -1, -2))
      {
        FUNC3(L, 2);  /* remove the two metatables */
        return *p;
      }
    }
    FUNC3(L, 2); /* remove the two metatables */
  }
  return NULL;
}