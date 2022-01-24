#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_11__ {int /*<<< orphan*/  nval; } ;
struct TYPE_14__ {TYPE_1__ u; } ;
struct TYPE_13__ {int /*<<< orphan*/  nkn; int /*<<< orphan*/  kt; int /*<<< orphan*/ * L; } ;
struct TYPE_12__ {int /*<<< orphan*/  u64; } ;
typedef  TYPE_2__ TValue ;
typedef  TYPE_3__ FuncState ;
typedef  TYPE_4__ ExpDesc ;
typedef  int /*<<< orphan*/  BCReg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static BCReg FUNC5(FuncState *fs, ExpDesc *e)
{
  lua_State *L = fs->L;
  TValue *o;
  FUNC2(FUNC0(e));
  o = FUNC1(L, fs->kt, &e->u.nval);
  if (FUNC3(o))
    return FUNC4(o);
  o->u64 = fs->nkn;
  return fs->nkn++;
}