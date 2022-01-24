#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ lookahead; scalar_t__ tok; int /*<<< orphan*/  lookaheadval; int /*<<< orphan*/  tokval; int /*<<< orphan*/  linenumber; int /*<<< orphan*/  lastline; } ;
typedef  TYPE_1__ LexState ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ TK_eof ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC2(LexState *ls)
{
  ls->lastline = ls->linenumber;
  if (FUNC0(ls->lookahead == TK_eof)) {  /* No lookahead token? */
    ls->tok = FUNC1(ls, &ls->tokval);  /* Get next token. */
  } else {  /* Otherwise return lookahead token. */
    ls->tok = ls->lookahead;
    ls->lookahead = TK_eof;
    ls->tokval = ls->lookaheadval;
  }
}