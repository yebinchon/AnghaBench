#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {scalar_t__ idx; } ;
struct TYPE_8__ {TYPE_6__* cap; int /*<<< orphan*/ * L; } ;
typedef  TYPE_1__ CapState ;

/* Variables and functions */
 scalar_t__ Cgroup ; 
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9 (CapState *cs) {
  lua_State *L = cs->L;
  int n = 0;
  FUNC3(L);
  if (FUNC2(cs->cap++))
    return 1;  /* table is empty */
  while (!FUNC1(cs->cap)) {
    if (FUNC0(cs->cap) == Cgroup && cs->cap->idx != 0) {  /* named group? */
      FUNC7(cs);  /* push group name */
      FUNC8(cs);
      FUNC5(L, -3);
    }
    else {  /* not a named group */
      int i;
      int k = FUNC6(cs);
      for (i = k; i > 0; i--)  /* store all values into table */
        FUNC4(L, -(i + 1), n + i);
      n += k;
    }
  }
  cs->cap++;  /* skip close entry */
  return 1;  /* number of values pushed (only the table) */
}