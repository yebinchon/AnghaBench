#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {int ncode; int /*<<< orphan*/ * L; TYPE_1__* p; } ;
struct TYPE_8__ {int /*<<< orphan*/ * code; int /*<<< orphan*/  tree; } ;
typedef  TYPE_1__ Pattern ;
typedef  int /*<<< orphan*/  Instruction ;
typedef  TYPE_2__ CompileState ;

/* Variables and functions */
 int /*<<< orphan*/  IEnd ; 
 int /*<<< orphan*/  NOINST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fullset ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

Instruction *FUNC4 (lua_State *L, Pattern *p) {
  CompileState compst;
  compst.p = p;  compst.ncode = 0;  compst.L = L;
  FUNC3(L, p, 2);  /* minimum initial size */
  FUNC1(&compst, p->tree, 0, NOINST, fullset);
  FUNC0(&compst, IEnd, 0);
  FUNC3(L, p, compst.ncode);  /* set final size */
  FUNC2(&compst);
  return p->code;
}