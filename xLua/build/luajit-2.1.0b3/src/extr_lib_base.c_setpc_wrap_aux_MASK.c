#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_7__ {int /*<<< orphan*/ * bcff; } ;
struct TYPE_5__ {int /*<<< orphan*/  pc; } ;
struct TYPE_6__ {TYPE_1__ c; } ;
typedef  TYPE_2__ GCfunc ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 int* lj_lib_init_coroutine ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(lua_State *L, GCfunc *fn)
{
  FUNC1(fn->c.pc, &FUNC0(L)->bcff[lj_lib_init_coroutine[1]+2]);
}