#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int c; int /*<<< orphan*/  L; int /*<<< orphan*/  sb; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int MSize ;
typedef  TYPE_1__ LexState ;
typedef  int /*<<< orphan*/  GCstr ;

/* Variables and functions */
#define  LEX_EOF 128 
 int /*<<< orphan*/  LJ_ERR_XLCOM ; 
 int /*<<< orphan*/  LJ_ERR_XLSTR ; 
 int /*<<< orphan*/  TK_eof ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(LexState *ls, TValue *tv, int sep)
{
  FUNC3(ls);  /* Skip second '['. */
  if (FUNC0(ls))  /* Skip initial newline. */
    FUNC1(ls);
  for (;;) {
    switch (ls->c) {
    case LEX_EOF:
      FUNC6(ls, TK_eof, tv ? LJ_ERR_XLSTR : LJ_ERR_XLCOM);
      break;
    case ']':
      if (FUNC4(ls) == sep) {
	FUNC3(ls);  /* Skip second ']'. */
	goto endloop;
      }
      break;
    case '\n':
    case '\r':
      FUNC2(ls, '\n');
      FUNC1(ls);
      if (!tv) FUNC5(&ls->sb);  /* Don't waste space for comments. */
      break;
    default:
      FUNC3(ls);
      break;
    }
  } endloop:
  if (tv) {
    GCstr *str = FUNC7(ls, FUNC8(&ls->sb) + (2 + (MSize)sep),
				      FUNC9(&ls->sb) - 2*(2 + (MSize)sep));
    FUNC10(ls->L, tv, str);
  }
}