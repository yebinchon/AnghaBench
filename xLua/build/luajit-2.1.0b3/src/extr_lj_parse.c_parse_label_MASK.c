#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_12__* bl; int /*<<< orphan*/  pc; int /*<<< orphan*/  lasttarget; } ;
struct TYPE_17__ {char tok; TYPE_1__* vstack; TYPE_3__* fs; } ;
struct TYPE_16__ {int /*<<< orphan*/  slot; } ;
struct TYPE_15__ {int /*<<< orphan*/  nactvar; int /*<<< orphan*/  flags; } ;
typedef  size_t MSize ;
typedef  TYPE_2__ LexState ;
typedef  int /*<<< orphan*/  GCstr ;
typedef  TYPE_3__ FuncState ;

/* Variables and functions */
 int /*<<< orphan*/  FSCOPE_GOLA ; 
 scalar_t__ LJ_52 ; 
 int /*<<< orphan*/  LJ_ERR_XLDUP ; 
 char TK_label ; 
 char TK_until ; 
 int /*<<< orphan*/  VSTACK_LABEL ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_12__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC11(LexState *ls)
{
  FuncState *fs = ls->fs;
  GCstr *name;
  MSize idx;
  fs->lasttarget = fs->pc;
  fs->bl->flags |= FSCOPE_GOLA;
  FUNC6(ls);  /* Skip '::'. */
  name = FUNC4(ls);
  if (FUNC0(ls, name))
    FUNC5(ls, 0, LJ_ERR_XLDUP, FUNC8(name));
  idx = FUNC1(ls, name, VSTACK_LABEL, fs->pc);
  FUNC3(ls, TK_label);
  /* Recursively parse trailing statements: labels and ';' (Lua 5.2 only). */
  for (;;) {
    if (ls->tok == TK_label) {
      FUNC9(ls);
      FUNC11(ls);
      FUNC10(ls);
    } else if (LJ_52 && ls->tok == ';') {
      FUNC6(ls);
    } else {
      break;
    }
  }
  /* Trailing label is considered to be outside of scope. */
  if (FUNC7(ls->tok) && ls->tok != TK_until)
    ls->vstack[idx].slot = fs->bl->nactvar;
  FUNC2(ls, fs->bl, idx);
}