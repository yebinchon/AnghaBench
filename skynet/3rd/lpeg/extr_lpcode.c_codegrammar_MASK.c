#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ tag; } ;
typedef  TYPE_1__ TTree ;
typedef  int /*<<< orphan*/  CompileState ;

/* Variables and functions */
 int /*<<< orphan*/  ICall ; 
 int /*<<< orphan*/  IJmp ; 
 int /*<<< orphan*/  IRet ; 
 int MAXRULES ; 
 int /*<<< orphan*/  NOINST ; 
 scalar_t__ TRule ; 
 scalar_t__ TTrue ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int,int) ; 
 int /*<<< orphan*/  fullset ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 
 TYPE_1__* FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC9 (CompileState *compst, TTree *grammar) {
  int positions[MAXRULES];
  int rulenumber = 0;
  TTree *rule;
  int firstcall = FUNC1(compst, ICall);  /* call initial rule */
  int jumptoend = FUNC1(compst, IJmp);  /* jump to the end */
  int start = FUNC5(compst);  /* here starts the initial rule */
  FUNC6(compst, firstcall);
  for (rule = FUNC7(grammar); rule->tag == TRule; rule = FUNC8(rule)) {
    positions[rulenumber++] = FUNC5(compst);  /* save rule position */
    FUNC3(compst, FUNC7(rule), 0, NOINST, fullset);  /* code rule */
    FUNC0(compst, IRet, 0);
  }
  FUNC2(rule->tag == TTrue);
  FUNC6(compst, jumptoend);
  FUNC4(compst, positions, start, FUNC5(compst));
}