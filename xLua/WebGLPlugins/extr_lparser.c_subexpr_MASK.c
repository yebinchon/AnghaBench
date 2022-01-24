#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  expdesc ;
typedef  scalar_t__ UnOpr ;
struct TYPE_11__ {int left; int right; } ;
struct TYPE_9__ {int /*<<< orphan*/  token; } ;
struct TYPE_10__ {int linenumber; int /*<<< orphan*/  fs; TYPE_1__ t; } ;
typedef  TYPE_2__ LexState ;
typedef  size_t BinOpr ;

/* Variables and functions */
 size_t OPR_NOBINOPR ; 
 scalar_t__ OPR_NOUNOPR ; 
 int UNARY_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_5__* priority ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static BinOpr FUNC9 (LexState *ls, expdesc *v, int limit) {
  BinOpr op;
  UnOpr uop;
  FUNC0(ls);
  uop = FUNC2(ls->t.token);
  if (uop != OPR_NOUNOPR) {
    int line = ls->linenumber;
    FUNC7(ls);
    FUNC9(ls, v, UNARY_PRIORITY);
    FUNC6(ls->fs, uop, v, line);
  }
  else FUNC8(ls, v);
  /* expand while operators have priorities higher than 'limit' */
  op = FUNC1(ls->t.token);
  while (op != OPR_NOBINOPR && priority[op].left > limit) {
    expdesc v2;
    BinOpr nextop;
    int line = ls->linenumber;
    FUNC7(ls);
    FUNC4(ls->fs, op, v);
    /* read sub-expression with higher priority */
    nextop = FUNC9(ls, &v2, priority[op].right);
    FUNC5(ls->fs, op, v, &v2, line);
    op = nextop;
  }
  FUNC3(ls);
  return op;  /* return first untreated operator */
}