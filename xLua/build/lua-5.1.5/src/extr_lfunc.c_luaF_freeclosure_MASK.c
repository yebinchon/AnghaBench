#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {int /*<<< orphan*/  nupvalues; } ;
struct TYPE_6__ {int /*<<< orphan*/  nupvalues; scalar_t__ isC; } ;
struct TYPE_8__ {TYPE_2__ l; TYPE_1__ c; } ;
typedef  TYPE_3__ Closure ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3 (lua_State *L, Closure *c) {
  int size = (c->c.isC) ? FUNC1(c->c.nupvalues) :
                          FUNC2(c->l.nupvalues);
  FUNC0(L, c, size);
}