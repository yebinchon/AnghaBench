#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char tok; int /*<<< orphan*/ * fs; int /*<<< orphan*/  linenumber; } ;
typedef  TYPE_1__ LexState ;
typedef  int /*<<< orphan*/  FuncState ;
typedef  int /*<<< orphan*/  ExpDesc ;
typedef  int /*<<< orphan*/  BCLine ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_52 ; 
 int /*<<< orphan*/  LJ_ERR_XSYMBOL ; 
 scalar_t__ LJ_FR2 ; 
 char TK_goto ; 
 char TK_name ; 
 char TK_string ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(LexState *ls, ExpDesc *v)
{
  FuncState *fs = ls->fs;
  /* Parse prefix expression. */
  if (ls->tok == '(') {
    BCLine line = ls->linenumber;
    FUNC12(ls);
    FUNC3(ls, v);
    FUNC11(ls, ')', '(', line);
    FUNC5(ls->fs, v);
  } else if (ls->tok == TK_name || (!LJ_52 && ls->tok == TK_goto)) {
    FUNC14(ls, v);
  } else {
    FUNC2(ls, LJ_ERR_XSYMBOL);
  }
  for (;;) {  /* Parse multiple expression suffixes. */
    if (ls->tok == '.') {
      FUNC6(ls, v);
    } else if (ls->tok == '[') {
      ExpDesc key;
      FUNC9(fs, v);
      FUNC4(ls, &key);
      FUNC7(fs, v, &key);
    } else if (ls->tok == ':') {
      ExpDesc key;
      FUNC12(ls);
      FUNC8(ls, &key);
      FUNC0(fs, v, &key);
      FUNC13(ls, v);
    } else if (ls->tok == '(' || ls->tok == TK_string || ls->tok == '{') {
      FUNC10(fs, v);
      if (LJ_FR2) FUNC1(fs, 1);
      FUNC13(ls, v);
    } else {
      break;
    }
  }
}