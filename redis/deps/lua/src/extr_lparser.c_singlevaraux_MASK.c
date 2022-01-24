#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  info; } ;
struct TYPE_13__ {TYPE_1__ s; } ;
struct TYPE_14__ {int k; TYPE_2__ u; } ;
typedef  TYPE_3__ expdesc ;
struct TYPE_15__ {struct TYPE_15__* prev; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_4__ FuncState ;

/* Variables and functions */
 int NO_REG ; 
 int VGLOBAL ; 
 int VLOCAL ; 
 int VUPVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 (FuncState *fs, TString *n, expdesc *var, int base) {
  if (fs == NULL) {  /* no more levels? */
    FUNC1(var, VGLOBAL, NO_REG);  /* default is global variable */
    return VGLOBAL;
  }
  else {
    int v = FUNC3(fs, n);  /* look up at current level */
    if (v >= 0) {
      FUNC1(var, VLOCAL, v);
      if (!base)
        FUNC2(fs, v);  /* local will be used as an upval */
      return VLOCAL;
    }
    else {  /* not found at current level; try upper one */
      if (FUNC4(fs->prev, n, var, 0) == VGLOBAL)
        return VGLOBAL;
      var->u.s.info = FUNC0(fs, n, var);  /* else was LOCAL or UPVAL */
      var->k = VUPVAL;  /* upvalue in this level */
      return VUPVAL;
    }
  }
}