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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int) ; 
 char* FUNC11 (int /*<<< orphan*/ *,int) ; 
 void** FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 

int FUNC14(lua_State *L)
{
  if(FUNC13(L, 1) == 10) /* luajit cdata */
  {
    /* we want the pointer holded by cdata */
    /* not the pointer on the cdata object */
    const void* ptr = *((void**)FUNC10(L, 1));
    FUNC3(L, ptr);
    return 1;
  }
  else if (FUNC2(L, 1)) /* luaffi cdata */
  {
    void** ptr = (void**)FUNC12(L, 1);
    FUNC3(L, ptr[4]);
    return 1;
  }
  else if(FUNC9(L, 1))
  {
    void **ptr;
    FUNC0(L, FUNC4(L, 1), 1, "Torch object expected");
    ptr = FUNC12(L, 1);
    FUNC3(L, *ptr);
    return 1;
  }
  else if(FUNC7(L, 1) || FUNC8(L, 1) || FUNC5(L, 1))
  {
    const void* ptr = FUNC10(L, 1);
    FUNC3(L, ptr);
    return 1;
  }
  else if(FUNC6(L, 1))
  {
    const char* ptr = FUNC11(L, 1);
    FUNC3(L, ptr);
    return 1;
  }
  else
    FUNC1(L, "Torch object, table, thread, cdata or function expected");

  return 0;
}