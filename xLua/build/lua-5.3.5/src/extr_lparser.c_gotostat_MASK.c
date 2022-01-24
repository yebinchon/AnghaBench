#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int linenumber; TYPE_1__* dyd; int /*<<< orphan*/  L; } ;
struct TYPE_9__ {int /*<<< orphan*/  gt; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
 int /*<<< orphan*/  TK_GOTO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6 (LexState *ls, int pc) {
  int line = ls->linenumber;
  TString *label;
  int g;
  if (FUNC5(ls, TK_GOTO))
    label = FUNC4(ls);
  else {
    FUNC2(ls);  /* skip break */
    label = FUNC1(ls->L, "break");
  }
  g = FUNC3(ls, &ls->dyd->gt, label, line, pc);
  FUNC0(ls, g);  /* close it if label already defined */
}