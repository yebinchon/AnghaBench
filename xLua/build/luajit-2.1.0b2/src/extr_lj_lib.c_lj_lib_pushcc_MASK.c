#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct TYPE_11__ {scalar_t__ top; } ;
typedef  TYPE_2__ lua_State ;
typedef  int /*<<< orphan*/  lua_CFunction ;
struct TYPE_13__ {int /*<<< orphan*/  bc_cfunc_int; } ;
struct TYPE_10__ {int /*<<< orphan*/  pc; scalar_t__ ffid; } ;
struct TYPE_12__ {TYPE_1__ c; } ;
typedef  TYPE_3__ GCfunc ;

/* Variables and functions */
 TYPE_8__* FUNC0 (TYPE_2__*) ; 
 TYPE_3__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

GCfunc *FUNC4(lua_State *L, lua_CFunction f, int id, int n)
{
  GCfunc *fn;
  FUNC2(L, f, n);
  fn = FUNC1(L->top-1);
  fn->c.ffid = (uint8_t)id;
  FUNC3(fn->c.pc, &FUNC0(L)->bc_cfunc_int);
  return fn;
}