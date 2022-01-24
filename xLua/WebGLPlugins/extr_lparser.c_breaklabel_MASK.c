#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * arr; } ;
struct TYPE_10__ {TYPE_2__* dyd; TYPE_1__* fs; int /*<<< orphan*/  L; } ;
struct TYPE_9__ {TYPE_5__ label; } ;
struct TYPE_8__ {int /*<<< orphan*/  pc; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_3__ LexState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (LexState *ls) {
  TString *n = FUNC1(ls->L, "break");
  int l = FUNC2(ls, &ls->dyd->label, n, 0, ls->fs->pc);
  FUNC0(ls, &ls->dyd->label.arr[l]);
}