#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int info; } ;
struct TYPE_16__ {TYPE_1__ u; int /*<<< orphan*/  k; } ;
typedef  TYPE_2__ expdesc ;
struct TYPE_17__ {int freereg; } ;
typedef  TYPE_3__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  OP_SELF ; 
 int /*<<< orphan*/  VNONRELOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 

void FUNC5 (FuncState *fs, expdesc *e, expdesc *key) {
  int ereg;
  FUNC3(fs, e);
  ereg = e->u.info;  /* register where 'e' was placed */
  FUNC0(fs, e);
  e->u.info = fs->freereg;  /* base register for op_self */
  e->k = VNONRELOC;  /* self expression has a fixed register */
  FUNC4(fs, 2);  /* function and 'self' produced by op_self */
  FUNC1(fs, OP_SELF, e->u.info, ereg, FUNC2(fs, key));
  FUNC0(fs, key);
}