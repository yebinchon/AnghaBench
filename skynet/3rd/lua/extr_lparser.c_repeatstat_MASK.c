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
struct TYPE_10__ {int /*<<< orphan*/  nactvar; scalar_t__ upval; } ;
struct TYPE_9__ {int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ LexState ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  TYPE_2__ BlockCnt ;

/* Variables and functions */
 int /*<<< orphan*/  TK_REPEAT ; 
 int /*<<< orphan*/  TK_UNTIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC9 (LexState *ls, int line) {
  /* repeatstat -> REPEAT block UNTIL cond */
  int condexit;
  FuncState *fs = ls->fs;
  int repeat_init = FUNC4(fs);
  BlockCnt bl1, bl2;
  FUNC2(fs, &bl1, 1);  /* loop block */
  FUNC2(fs, &bl2, 0);  /* scope block */
  FUNC7(ls);  /* skip REPEAT */
  FUNC8(ls);
  FUNC0(ls, TK_UNTIL, TK_REPEAT, line);
  condexit = FUNC1(ls);  /* read condition (inside scope block) */
  if (bl2.upval)  /* upvalues? */
    FUNC5(fs, condexit, bl2.nactvar);
  FUNC3(fs);  /* finish scope */
  FUNC6(fs, condexit, repeat_init);  /* close the loop */
  FUNC3(fs);  /* finish loop */
}