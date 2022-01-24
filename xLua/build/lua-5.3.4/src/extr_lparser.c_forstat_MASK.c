#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int token; } ;
struct TYPE_11__ {TYPE_1__ t; int /*<<< orphan*/ * fs; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_2__ LexState ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  int /*<<< orphan*/  BlockCnt ;

/* Variables and functions */
 int /*<<< orphan*/  TK_END ; 
 int /*<<< orphan*/  TK_FOR ; 
#define  TK_IN 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC8 (LexState *ls, int line) {
  /* forstat -> FOR (fornum | forlist) END */
  FuncState *fs = ls->fs;
  TString *varname;
  BlockCnt bl;
  FUNC1(fs, &bl, 1);  /* scope for loop and control variables */
  FUNC5(ls);  /* skip 'for' */
  varname = FUNC7(ls);  /* first variable name */
  switch (ls->t.token) {
    case '=': FUNC3(ls, varname, line); break;
    case ',': case TK_IN: FUNC2(ls, varname); break;
    default: FUNC6(ls, "'=' or 'in' expected");
  }
  FUNC0(ls, TK_END, TK_FOR, line);
  FUNC4(fs);  /* loop scope ('break' jumps to this point) */
}