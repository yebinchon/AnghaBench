#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ k; } ;
typedef  TYPE_1__ expdesc ;
struct TYPE_12__ {struct TYPE_12__* prev; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_2__ FuncState ;

/* Variables and functions */
 scalar_t__ VLOCAL ; 
 scalar_t__ VUPVAL ; 
 scalar_t__ VVOID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5 (FuncState *fs, TString *n, expdesc *var, int base) {
  if (fs == NULL)  /* no more levels? */
    FUNC0(var, VVOID, 0);  /* default is global */
  else {
    int v = FUNC4(fs, n);  /* look up locals at current level */
    if (v >= 0) {  /* found? */
      FUNC0(var, VLOCAL, v);  /* variable is local */
      if (!base)
        FUNC1(fs, v);  /* local will be used as an upval */
    }
    else {  /* not found as local at current level; try upvalues */
      int idx = FUNC3(fs, n);  /* try existing upvalues */
      if (idx < 0) {  /* not found? */
        FUNC5(fs->prev, n, var, 0);  /* try upper levels */
        if (var->k == VVOID)  /* not found? */
          return;  /* it is a global */
        /* else was LOCAL or UPVAL */
        idx  = FUNC2(fs, n, var);  /* will be a new upvalue */
      }
      FUNC0(var, VUPVAL, idx);  /* new or old upvalue */
    }
  }
}