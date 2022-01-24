#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_13__ {int /*<<< orphan*/  ocap; int /*<<< orphan*/ * L; } ;
struct TYPE_12__ {int /*<<< orphan*/  idx; } ;
typedef  TYPE_1__ Capture ;
typedef  TYPE_2__ CapState ;

/* Variables and functions */
 scalar_t__ Cgroup ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static Capture *FUNC9 (CapState *cs, Capture *cap) {
  lua_State *L = cs->L;
  while (cap-- > cs->ocap) {  /* repeat until end of list */
    if (FUNC3(cap))
      cap = FUNC1(cap);  /* skip nested captures */
    else if (!FUNC4(cap))
      continue; /* opening an enclosing capture: skip and get previous */
    if (FUNC0(cap) == Cgroup) {
      FUNC2(cs, cap->idx);  /* get group name */
      if (FUNC5(L, -2, -1)) {  /* right group? */
        FUNC7(L, 2);  /* remove reference name and group name */
        return cap;
      }
      else FUNC7(L, 1);  /* remove group name */
    }
  }
  FUNC6(L, "back reference '%s' not found", FUNC8(L, -1));
  return NULL;  /* to avoid warnings */
}