#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * varname; } ;
struct TYPE_12__ {scalar_t__ nactvar; int /*<<< orphan*/  pc; int /*<<< orphan*/  line; int /*<<< orphan*/ * name; } ;
struct TYPE_11__ {int n; TYPE_4__* arr; } ;
struct TYPE_10__ {int /*<<< orphan*/  L; TYPE_1__* dyd; int /*<<< orphan*/ * fs; } ;
struct TYPE_9__ {TYPE_3__ gt; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_2__ LexState ;
typedef  TYPE_3__ Labellist ;
typedef  TYPE_4__ Labeldesc ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char const*) ; 

__attribute__((used)) static void FUNC7 (LexState *ls, int g, Labeldesc *label) {
  int i;
  FuncState *fs = ls->fs;
  Labellist *gl = &ls->dyd->gt;
  Labeldesc *gt = &gl->arr[g];
  FUNC5(FUNC0(gt->name, label->name));
  if (gt->nactvar < label->nactvar) {
    TString *vname = FUNC1(fs, gt->nactvar)->varname;
    const char *msg = FUNC4(ls->L,
      "<goto %s> at line %d jumps into the scope of local '%s'",
      FUNC2(gt->name), gt->line, FUNC2(vname));
    FUNC6(ls, msg);
  }
  FUNC3(fs, gt->pc, label->pc);
  /* remove goto from pending list */
  for (i = g; i < gl->n - 1; i++)
    gl->arr[i] = gl->arr[i + 1];
  gl->n--;
}