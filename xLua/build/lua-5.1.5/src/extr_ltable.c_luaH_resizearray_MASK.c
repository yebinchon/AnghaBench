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
struct TYPE_5__ {scalar_t__ node; } ;
typedef  TYPE_1__ Table ;

/* Variables and functions */
 scalar_t__ dummynode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 
 int FUNC1 (TYPE_1__*) ; 

void FUNC2 (lua_State *L, Table *t, int nasize) {
  int nsize = (t->node == dummynode) ? 0 : FUNC1(t);
  FUNC0(L, t, nasize, nsize);
}