#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_7__* L; int /*<<< orphan*/ * base; } ;
typedef  TYPE_1__ jit_State ;
struct TYPE_10__ {int /*<<< orphan*/ * base; } ;
struct TYPE_9__ {int /*<<< orphan*/  keyv; int /*<<< orphan*/  valv; int /*<<< orphan*/  mobjv; int /*<<< orphan*/  key; int /*<<< orphan*/  val; int /*<<< orphan*/  mobj; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  TRef ;
typedef  TYPE_2__ RecordIndex ;
typedef  int BCReg ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_FR2 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lj_cont_condf ; 
 int /*<<< orphan*/  lj_cont_condt ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(jit_State *J, RecordIndex *ix, int op)
{
  BCReg func = FUNC3(J, (op&1) ? lj_cont_condf : lj_cont_condt);
  TRef *base = J->base + func;
  TValue *tv = J->L->base + func;
  FUNC2(!LJ_FR2);  /* TODO_FR2: handle different frame setup. */
  base[0] = ix->mobj; base[1] = ix->val; base[2] = ix->key;
  FUNC0(J->L, tv+0, &ix->mobjv);
  FUNC0(J->L, tv+1, &ix->valv);
  FUNC0(J->L, tv+2, &ix->keyv);
  FUNC1(J, func, 2);
}