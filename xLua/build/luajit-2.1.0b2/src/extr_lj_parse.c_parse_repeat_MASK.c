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
struct TYPE_20__ {int flags; } ;
struct TYPE_19__ {int /*<<< orphan*/  pc; int /*<<< orphan*/  nactvar; int /*<<< orphan*/  lasttarget; } ;
struct TYPE_18__ {TYPE_2__* fs; } ;
typedef  TYPE_1__ LexState ;
typedef  TYPE_2__ FuncState ;
typedef  TYPE_3__ FuncScope ;
typedef  int /*<<< orphan*/  BCPos ;
typedef  int /*<<< orphan*/  BCLine ;

/* Variables and functions */
 int /*<<< orphan*/  BC_LOOP ; 
 int /*<<< orphan*/  FSCOPE_LOOP ; 
 int FSCOPE_UPVAL ; 
 int /*<<< orphan*/  TK_repeat ; 
 int /*<<< orphan*/  TK_until ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC12(LexState *ls, BCLine line)
{
  FuncState *fs = ls->fs;
  BCPos loop = fs->lasttarget = fs->pc;
  BCPos condexit;
  FuncScope bl1, bl2;
  FUNC3(fs, &bl1, FSCOPE_LOOP);  /* Breakable loop scope. */
  FUNC3(fs, &bl2, 0);  /* Inner scope. */
  FUNC9(ls);  /* Skip 'repeat'. */
  FUNC0(fs, BC_LOOP, fs->nactvar, 0);
  FUNC11(ls);
  FUNC8(ls, TK_until, TK_repeat, line);
  condexit = FUNC2(ls);  /* Parse condition (still inside inner scope). */
  if (!(bl2.flags & FSCOPE_UPVAL)) {  /* No upvalues? Just end inner scope. */
    FUNC4(fs);
  } else {  /* Otherwise generate: cond: UCLO+JMP out, !cond: UCLO+JMP loop. */
    FUNC10(ls);  /* Break from loop and close upvalues. */
    FUNC7(fs, condexit);
    FUNC4(fs);  /* End inner scope and close upvalues. */
    condexit = FUNC1(fs);
  }
  FUNC5(fs, condexit, loop);  /* Jump backwards if !cond. */
  FUNC6(fs, loop, fs->pc);
  FUNC4(fs);  /* End loop scope. */
}