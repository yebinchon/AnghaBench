#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {size_t pc; TYPE_1__* bcbase; int /*<<< orphan*/  freereg; } ;
struct TYPE_19__ {TYPE_3__* fs; } ;
struct TYPE_18__ {int /*<<< orphan*/  line; } ;
typedef  TYPE_2__ LexState ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  TYPE_3__ FuncState ;
typedef  int /*<<< orphan*/  FuncScope ;
typedef  int /*<<< orphan*/  BCReg ;
typedef  size_t BCPos ;
typedef  int /*<<< orphan*/  BCLine ;

/* Variables and functions */
 int /*<<< orphan*/  BC_FORI ; 
 int /*<<< orphan*/  BC_FORL ; 
 int /*<<< orphan*/  BC_KSHORT ; 
 int /*<<< orphan*/  FORL_EXT ; 
 int /*<<< orphan*/  FORL_IDX ; 
 int /*<<< orphan*/  FORL_STEP ; 
 int /*<<< orphan*/  FORL_STOP ; 
 int /*<<< orphan*/  NO_JMP ; 
 char TK_do ; 
 int /*<<< orphan*/  VARNAME_FOR_IDX ; 
 int /*<<< orphan*/  VARNAME_FOR_STEP ; 
 int /*<<< orphan*/  VARNAME_FOR_STOP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char) ; 
 scalar_t__ FUNC8 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(LexState *ls, GCstr *varname, BCLine line)
{
  FuncState *fs = ls->fs;
  BCReg base = fs->freereg;
  FuncScope bl;
  BCPos loop, loopend;
  /* Hidden control variables. */
  FUNC12(ls, FORL_IDX, VARNAME_FOR_IDX);
  FUNC12(ls, FORL_STOP, VARNAME_FOR_STOP);
  FUNC12(ls, FORL_STEP, VARNAME_FOR_STEP);
  /* Visible copy of index variable. */
  FUNC11(ls, FORL_EXT, varname);
  FUNC7(ls, '=');
  FUNC3(ls);
  FUNC7(ls, ',');
  FUNC3(ls);
  if (FUNC8(ls, ',')) {
    FUNC3(ls);
  } else {
    FUNC0(fs, BC_KSHORT, fs->freereg, 1);  /* Default step is 1. */
    FUNC2(fs, 1);
  }
  FUNC10(ls, 3);  /* Hidden control variables. */
  FUNC7(ls, TK_do);
  loop = FUNC1(fs, BC_FORI, base, NO_JMP);
  FUNC4(fs, &bl, 0);  /* Scope for visible variables. */
  FUNC10(ls, 1);
  FUNC2(fs, 1);
  FUNC9(ls);
  FUNC5(fs);
  /* Perform loop inversion. Loop control instructions are at the end. */
  loopend = FUNC1(fs, BC_FORL, base, NO_JMP);
  fs->bcbase[loopend].line = line;  /* Fix line for control ins. */
  FUNC6(fs, loopend, loop+1);
  FUNC6(fs, loop, fs->pc);
}