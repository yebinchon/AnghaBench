#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ CapState ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_MULTRET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (CapState *cs) {
  int n;
  int top = FUNC1(cs->L);
  FUNC2(cs);  /* push function */
  n = FUNC3(cs, 0);  /* push nested captures */
  FUNC0(cs->L, n, LUA_MULTRET);  /* call function */
  return FUNC1(cs->L) - top;  /* return function's results */
}