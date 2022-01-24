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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ Table ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,unsigned int,int) ; 
 int FUNC2 (TYPE_1__*) ; 

void FUNC3 (lua_State *L, Table *t, unsigned int nasize) {
  int nsize = FUNC0(t->node) ? 0 : FUNC2(t);
  FUNC1(L, t, nasize, nsize);
}