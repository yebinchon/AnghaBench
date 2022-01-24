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
 int LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int) ; 

const char* FUNC9(lua_State *L)
{
  FUNC1(L, "torch");
  if(FUNC4(L, -1))
  {
    FUNC0(L, -1, "Tensor");
    if(FUNC4(L, -1))
    {
      if(FUNC2(L, -1))
      {
        FUNC6(L, "__index");
        FUNC7(L, -2);
        if(FUNC4(L, -1))
        {
          FUNC7(L, LUA_REGISTRYINDEX);
          if(FUNC3(L, -1))
          {
            const char *tname = FUNC8(L, -1);
            FUNC5(L, 4);
            return tname;
          }
        }
        else
        {
          FUNC5(L, 4);
          return NULL;
        }
      }
      else
      {
        FUNC5(L, 2);
        return NULL;
      }
    }
    else
    {
      FUNC5(L, 2);
      return NULL;
    }
  }
  else
  {
    FUNC5(L, 1);
    return NULL;
  }
  return NULL;
}