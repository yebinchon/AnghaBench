#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ token; } ;
struct TYPE_9__ {TYPE_1__ t; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_2__ LexState ;
typedef  int /*<<< orphan*/  FuncState ;

/* Variables and functions */
 int NO_JUMP ; 
 int /*<<< orphan*/  TK_ELSE ; 
 scalar_t__ TK_ELSEIF ; 
 int /*<<< orphan*/  TK_END ; 
 int /*<<< orphan*/  TK_IF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (LexState *ls, int line) {
  /* ifstat -> IF cond THEN block {ELSEIF cond THEN block} [ELSE block] END */
  FuncState *fs = ls->fs;
  int escapelist = NO_JUMP;  /* exit list for finished parts */
  FUNC3(ls, &escapelist);  /* IF cond THEN block */
  while (ls->t.token == TK_ELSEIF)
    FUNC3(ls, &escapelist);  /* ELSEIF cond THEN block */
  if (FUNC4(ls, TK_ELSE))
    FUNC0(ls);  /* 'else' part */
  FUNC1(ls, TK_END, TK_IF, line);
  FUNC2(fs, escapelist);  /* patch escape list to 'if' end */
}