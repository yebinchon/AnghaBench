#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int tok; int /*<<< orphan*/  linenumber; } ;
typedef  TYPE_1__ LexState ;
typedef  int /*<<< orphan*/  BCLine ;

/* Variables and functions */
 int /*<<< orphan*/  LJ_52 ; 
#define  TK_break 138 
#define  TK_do 137 
 int /*<<< orphan*/  TK_end ; 
#define  TK_for 136 
#define  TK_function 135 
#define  TK_goto 134 
#define  TK_if 133 
#define  TK_label 132 
#define  TK_local 131 
 int /*<<< orphan*/  TK_name ; 
#define  TK_repeat 130 
#define  TK_return 129 
#define  TK_while 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(LexState *ls)
{
  BCLine line = ls->linenumber;
  switch (ls->tok) {
  case TK_if:
    FUNC9(ls, line);
    break;
  case TK_while:
    FUNC14(ls, line);
    break;
  case TK_do:
    FUNC2(ls);
    FUNC3(ls);
    FUNC0(ls, TK_end, TK_do, line);
    break;
  case TK_for:
    FUNC6(ls, line);
    break;
  case TK_repeat:
    FUNC12(ls, line);
    break;
  case TK_function:
    FUNC7(ls, line);
    break;
  case TK_local:
    FUNC2(ls);
    FUNC11(ls);
    break;
  case TK_return:
    FUNC13(ls);
    return 1;  /* Must be last. */
  case TK_break:
    FUNC2(ls);
    FUNC4(ls);
    return !LJ_52;  /* Must be last in Lua 5.1. */
#if LJ_52
  case ';':
    lj_lex_next(ls);
    break;
#endif
  case TK_label:
    FUNC10(ls);
    break;
  case TK_goto:
    if (LJ_52 || FUNC1(ls) == TK_name) {
      FUNC2(ls);
      FUNC8(ls);
      break;
    }  /* else: fallthrough */
  default:
    FUNC5(ls);
    break;
  }
  return 0;
}