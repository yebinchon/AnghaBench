#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ vt; int /*<<< orphan*/  idx; int /*<<< orphan*/  t; } ;
struct TYPE_9__ {TYPE_1__ ind; int /*<<< orphan*/  info; } ;
struct TYPE_10__ {scalar_t__ k; TYPE_2__ u; } ;
typedef  TYPE_3__ expdesc ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 scalar_t__ VINDEXED ; 
 int /*<<< orphan*/  VLOCAL ; 
 scalar_t__ VUPVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5 (FuncState *fs, expdesc *t, expdesc *k) {
  FUNC3(!FUNC1(t));
  t->u.ind.t = t->u.info;
  t->u.ind.idx = FUNC2(fs, k);
  t->u.ind.vt = (t->k == VUPVAL) ? VUPVAL
                                 : FUNC0(FUNC4(t->k), VLOCAL);
  t->k = VINDEXED;
}