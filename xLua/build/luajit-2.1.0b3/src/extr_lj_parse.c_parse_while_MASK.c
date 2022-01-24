#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  pc; int /*<<< orphan*/  nactvar; int /*<<< orphan*/  lasttarget; } ;
struct TYPE_16__ {TYPE_2__* fs; } ;
typedef  TYPE_1__ LexState ;
typedef  TYPE_2__ FuncState ;
typedef  int /*<<< orphan*/  FuncScope ;
typedef  int /*<<< orphan*/  BCPos ;
typedef  int /*<<< orphan*/  BCLine ;

/* Variables and functions */
 int /*<<< orphan*/  BC_LOOP ; 
 int /*<<< orphan*/  FSCOPE_LOOP ; 
 int /*<<< orphan*/  TK_do ; 
 int /*<<< orphan*/  TK_end ; 
 int /*<<< orphan*/  TK_while ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC12(LexState *ls, BCLine line)
{
  FuncState *fs = ls->fs;
  BCPos start, loop, condexit;
  FuncScope bl;
  FUNC10(ls);  /* Skip 'while'. */
  start = fs->lasttarget = fs->pc;
  condexit = FUNC2(ls);
  FUNC3(fs, &bl, FSCOPE_LOOP);
  FUNC8(ls, TK_do);
  loop = FUNC0(fs, BC_LOOP, fs->nactvar, 0);
  FUNC11(ls);
  FUNC5(fs, FUNC1(fs), start);
  FUNC9(ls, TK_end, TK_while, line);
  FUNC4(fs);
  FUNC7(fs, condexit);
  FUNC6(fs, loop, fs->pc);
}