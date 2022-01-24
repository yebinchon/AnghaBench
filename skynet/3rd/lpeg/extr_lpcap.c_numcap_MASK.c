#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  L; TYPE_1__* cap; } ;
struct TYPE_6__ {int idx; } ;
typedef  TYPE_2__ CapState ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (CapState *cs) {
  int idx = cs->cap->idx;  /* value to select */
  if (idx == 0) {  /* no values? */
    FUNC4(cs);  /* skip entire capture */
    return 0;  /* no value produced */
  }
  else {
    int n = FUNC5(cs, 0);
    if (n < idx)  /* invalid index? */
      return FUNC0(cs->L, "no capture '%d'", idx);
    else {
      FUNC2(cs->L, -(n - idx + 1));  /* get selected capture */
      FUNC3(cs->L, -(n + 1));  /* put it in place of 1st capture */
      FUNC1(cs->L, n - 1);  /* remove other captures */
      return 1;
    }
  }
}