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
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ k; } ;
struct LHS_assign {int /*<<< orphan*/ * prev; TYPE_3__ v; } ;
struct TYPE_7__ {int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ LexState ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ VCALL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct LHS_assign*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC4 (LexState *ls) {
  /* stat -> func | assignment */
  FuncState *fs = ls->fs;
  struct LHS_assign v;
  FUNC3(ls, &v.v);
  if (v.v.k == VCALL)  /* stat -> func */
    FUNC0(FUNC2(fs, &v.v), 1);  /* call statement uses no results */
  else {  /* stat -> assignment */
    v.prev = NULL;
    FUNC1(ls, &v, 1);
  }
}