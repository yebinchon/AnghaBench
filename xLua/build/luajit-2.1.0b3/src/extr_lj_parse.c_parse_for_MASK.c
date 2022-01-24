#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char tok; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ LexState ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  int /*<<< orphan*/  FuncScope ;
typedef  int /*<<< orphan*/  BCLine ;

/* Variables and functions */
 int /*<<< orphan*/  FSCOPE_LOOP ; 
 int /*<<< orphan*/  LJ_ERR_XFOR ; 
 int /*<<< orphan*/  TK_end ; 
 int /*<<< orphan*/  TK_for ; 
 char TK_in ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(LexState *ls, BCLine line)
{
  FuncState *fs = ls->fs;
  GCstr *varname;
  FuncScope bl;
  FUNC1(fs, &bl, FSCOPE_LOOP);
  FUNC5(ls);  /* Skip 'for'. */
  varname = FUNC4(ls);  /* Get first variable name. */
  if (ls->tok == '=')
    FUNC7(ls, varname, line);
  else if (ls->tok == ',' || ls->tok == TK_in)
    FUNC6(ls, varname);
  else
    FUNC0(ls, LJ_ERR_XFOR);
  FUNC3(ls, TK_end, TK_for, line);
  FUNC2(fs);  /* Resolve break list. */
}