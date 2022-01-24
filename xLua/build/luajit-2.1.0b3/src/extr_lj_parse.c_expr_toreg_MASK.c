#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  info; } ;
struct TYPE_18__ {TYPE_1__ s; } ;
struct TYPE_20__ {scalar_t__ k; TYPE_2__ u; void* t; void* f; } ;
struct TYPE_19__ {void* lasttarget; void* pc; int /*<<< orphan*/  freereg; } ;
typedef  TYPE_3__ FuncState ;
typedef  TYPE_4__ ExpDesc ;
typedef  int /*<<< orphan*/  BCReg ;
typedef  void* BCPos ;

/* Variables and functions */
 int /*<<< orphan*/  BC_JMP ; 
 int /*<<< orphan*/  BC_KPRI ; 
 void* NO_JMP ; 
 scalar_t__ VJMP ; 
 int /*<<< orphan*/  VKFALSE ; 
 int /*<<< orphan*/  VKTRUE ; 
 scalar_t__ VNONRELOC ; 
 void* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,void**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,void*,void*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,void*) ; 

__attribute__((used)) static void FUNC9(FuncState *fs, ExpDesc *e, BCReg reg)
{
  FUNC4(fs, e, reg);
  if (e->k == VJMP)
    FUNC5(fs, &e->t, e->u.s.info);  /* Add it to the true jump list. */
  if (FUNC3(e)) {  /* Discharge expression with branches. */
    BCPos jend, jfalse = NO_JMP, jtrue = NO_JMP;
    if (FUNC6(fs, e->t) || FUNC6(fs, e->f)) {
      BCPos jval = (e->k == VJMP) ? NO_JMP : FUNC2(fs);
      jfalse = FUNC0(fs, BC_KPRI, reg, VKFALSE);
      FUNC1(fs, BC_JMP, fs->freereg, 1);
      jtrue = FUNC0(fs, BC_KPRI, reg, VKTRUE);
      FUNC8(fs, jval);
    }
    jend = fs->pc;
    fs->lasttarget = jend;
    FUNC7(fs, e->f, jend, reg, jfalse);
    FUNC7(fs, e->t, jend, reg, jtrue);
  }
  e->f = e->t = NO_JMP;
  e->u.s.info = reg;
  e->k = VNONRELOC;
}