#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ base; scalar_t__ top; } ;
typedef  TYPE_1__ lua_State ;

/* Variables and functions */
 int LJ_52 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 char* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(lua_State *L)
{
  const char *modname = FUNC1(L, 1);
  int lastarg = (int)(L->top - L->base);
  FUNC2(L, modname, 1);
  FUNC3(L, -1, "_NAME");
  if (!FUNC4(L, -1)) {  /* Module already initialized? */
    FUNC5(L, 1);
  } else {
    FUNC5(L, 1);
    FUNC7(L, modname);
  }
  FUNC6(L, -1);
  FUNC8(L);
  FUNC0(L, lastarg);
  return LJ_52;
}