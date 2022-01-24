#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {scalar_t__ bsize; int /*<<< orphan*/ * box; } ;
typedef  TYPE_1__ UBox ;

/* Variables and functions */
 int /*<<< orphan*/  boxgc ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int,size_t) ; 

__attribute__((used)) static void *FUNC6 (lua_State *L, size_t newsize) {
  UBox *box = (UBox *)FUNC1(L, sizeof(UBox));
  box->box = NULL;
  box->bsize = 0;
  if (FUNC0(L, "LUABOX")) {  /* creating metatable? */
    FUNC2(L, boxgc);
    FUNC3(L, -2, "__gc");  /* metatable.__gc = boxgc */
  }
  FUNC4(L, -2);
  return FUNC5(L, -1, newsize);
}