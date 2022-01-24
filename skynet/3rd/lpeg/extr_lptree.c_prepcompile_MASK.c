#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  tree; } ;
typedef  TYPE_1__ Pattern ;
typedef  int /*<<< orphan*/  Instruction ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static Instruction *FUNC4 (lua_State *L, Pattern *p, int idx) {
  FUNC2(L, idx);  /* push 'ktable' (may be used by 'finalfix') */
  FUNC1(L, 0, NULL, p->tree);
  FUNC3(L, 1);  /* remove 'ktable' */
  return FUNC0(L, p);
}