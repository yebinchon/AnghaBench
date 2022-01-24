#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* L; int /*<<< orphan*/ * pc; } ;
typedef  TYPE_3__ jit_State ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_10__ {scalar_t__ ffid; } ;
struct TYPE_12__ {TYPE_2__ c; } ;
struct TYPE_9__ {int /*<<< orphan*/ * base; } ;
typedef  int /*<<< orphan*/  TRef ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 scalar_t__ BC_CALLM ; 
 scalar_t__ FF_select ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_FUNC ; 
 int /*<<< orphan*/  IR_EQ ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_6__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(jit_State *J)
{
  BCIns ins = J->pc[1];
  if (FUNC4(ins) == BC_CALLM && FUNC2(ins) == 2 && FUNC3(ins) == 1) {
    cTValue *func = &J->L->base[FUNC1(ins)];
    if (FUNC9(func) && FUNC6(func)->c.ffid == FF_select) {
      TRef kfunc = FUNC8(J, FUNC6(func));
      FUNC5(FUNC0(IR_EQ, IRT_FUNC), FUNC7(J, FUNC1(ins)), kfunc);
      return 1;
    }
  }
  return 0;
}