#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int freereg; int pc; TYPE_1__* bcbase; } ;
struct TYPE_24__ {void* linenumber; TYPE_3__* fs; } ;
struct TYPE_23__ {void* line; } ;
typedef  TYPE_2__ LexState ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  TYPE_3__ FuncState ;
typedef  int /*<<< orphan*/  FuncScope ;
typedef  int /*<<< orphan*/  ExpDesc ;
typedef  int BCReg ;
typedef  int BCPos ;
typedef  void* BCLine ;

/* Variables and functions */
 int /*<<< orphan*/  BC_ISNEXT ; 
 int /*<<< orphan*/  BC_ITERC ; 
 int /*<<< orphan*/  BC_ITERL ; 
 int /*<<< orphan*/  BC_ITERN ; 
 int /*<<< orphan*/  BC_JMP ; 
 scalar_t__ LJ_FR2 ; 
 int /*<<< orphan*/  NO_JMP ; 
 int /*<<< orphan*/  TK_do ; 
 int /*<<< orphan*/  TK_in ; 
 int /*<<< orphan*/  VARNAME_FOR_CTL ; 
 int /*<<< orphan*/  VARNAME_FOR_GEN ; 
 int /*<<< orphan*/  VARNAME_FOR_STATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_2__*,char) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(LexState *ls, GCstr *indexname)
{
  FuncState *fs = ls->fs;
  ExpDesc e;
  BCReg nvars = 0;
  BCLine line;
  BCReg base = fs->freereg + 3;
  BCPos loop, loopend, exprpc = fs->pc;
  FuncScope bl;
  int isnext;
  /* Hidden control variables. */
  FUNC16(ls, nvars++, VARNAME_FOR_GEN);
  FUNC16(ls, nvars++, VARNAME_FOR_STATE);
  FUNC16(ls, nvars++, VARNAME_FOR_CTL);
  /* Visible variables returned from iterator. */
  FUNC15(ls, nvars++, indexname);
  while (FUNC10(ls, ','))
    FUNC15(ls, nvars++, FUNC11(ls));
  FUNC9(ls, TK_in);
  line = ls->linenumber;
  FUNC0(ls, 3, FUNC5(ls, &e), &e);
  /* The iterator needs another 3 [4] slots (func [pc] | state ctl). */
  FUNC3(fs, 3+LJ_FR2);
  isnext = (nvars <= 5 && FUNC13(ls, fs, exprpc));
  FUNC14(ls, 3);  /* Hidden control variables. */
  FUNC9(ls, TK_do);
  loop = FUNC2(fs, isnext ? BC_ISNEXT : BC_JMP, base, NO_JMP);
  FUNC6(fs, &bl, 0);  /* Scope for visible variables. */
  FUNC14(ls, nvars-3);
  FUNC4(fs, nvars-3);
  FUNC12(ls);
  FUNC7(fs);
  /* Perform loop inversion. Loop control instructions are at the end. */
  FUNC8(fs, loop, fs->pc);
  FUNC1(fs, isnext ? BC_ITERN : BC_ITERC, base, nvars-3+1, 2+1);
  loopend = FUNC2(fs, BC_ITERL, base, NO_JMP);
  fs->bcbase[loopend-1].line = line;  /* Fix line for control ins. */
  fs->bcbase[loopend].line = line;
  FUNC8(fs, loopend, loop+1);
}