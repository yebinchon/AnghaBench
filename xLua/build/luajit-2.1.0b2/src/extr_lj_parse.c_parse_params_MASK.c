#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ nactvar; int /*<<< orphan*/  flags; } ;
struct TYPE_13__ {char tok; TYPE_2__* fs; } ;
typedef  TYPE_1__ LexState ;
typedef  TYPE_2__ FuncState ;
typedef  scalar_t__ BCReg ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_52 ; 
 int /*<<< orphan*/  LJ_ERR_XPARAM ; 
 int /*<<< orphan*/  PROTO_VARARG ; 
 char TK_dots ; 
 char TK_goto ; 
 char TK_name ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static BCReg FUNC10(LexState *ls, int needself)
{
  FuncState *fs = ls->fs;
  BCReg nparams = 0;
  FUNC2(ls, '(');
  if (needself)
    FUNC9(ls, nparams++, "self");
  if (ls->tok != ')') {
    do {
      if (ls->tok == TK_name || (!LJ_52 && ls->tok == TK_goto)) {
	FUNC8(ls, nparams++, FUNC4(ls));
      } else if (ls->tok == TK_dots) {
	FUNC5(ls);
	fs->flags |= PROTO_VARARG;
	break;
      } else {
	FUNC1(ls, LJ_ERR_XPARAM);
      }
    } while (FUNC3(ls, ','));
  }
  FUNC7(ls, nparams);
  FUNC6(fs->nactvar == nparams);
  FUNC0(fs, nparams);
  FUNC2(ls, ')');
  return nparams;
}