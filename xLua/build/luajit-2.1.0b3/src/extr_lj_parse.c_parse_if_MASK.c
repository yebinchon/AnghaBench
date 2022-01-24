#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ tok; int /*<<< orphan*/ * fs; } ;
typedef  TYPE_1__ LexState ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  int /*<<< orphan*/  BCPos ;
typedef  int /*<<< orphan*/  BCLine ;

/* Variables and functions */
 int /*<<< orphan*/  NO_JMP ; 
 scalar_t__ TK_else ; 
 scalar_t__ TK_elseif ; 
 int /*<<< orphan*/  TK_end ; 
 int /*<<< orphan*/  TK_if ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(LexState *ls, BCLine line)
{
  FuncState *fs = ls->fs;
  BCPos flist;
  BCPos escapelist = NO_JMP;
  flist = FUNC6(ls);
  while (ls->tok == TK_elseif) {  /* Parse multiple 'elseif' blocks. */
    FUNC1(fs, &escapelist, FUNC0(fs));
    FUNC2(fs, flist);
    flist = FUNC6(ls);
  }
  if (ls->tok == TK_else) {  /* Parse optional 'else' block. */
    FUNC1(fs, &escapelist, FUNC0(fs));
    FUNC2(fs, flist);
    FUNC4(ls);  /* Skip 'else'. */
    FUNC5(ls);
  } else {
    FUNC1(fs, &escapelist, flist);
  }
  FUNC2(fs, escapelist);
  FUNC3(ls, TK_end, TK_if, line);
}