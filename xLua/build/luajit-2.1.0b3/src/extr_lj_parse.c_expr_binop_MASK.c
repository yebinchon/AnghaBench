#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_9__ {scalar_t__ left; scalar_t__ right; } ;
struct TYPE_8__ {int /*<<< orphan*/  fs; int /*<<< orphan*/  tok; } ;
typedef  TYPE_1__ LexState ;
typedef  int /*<<< orphan*/  ExpDesc ;
typedef  size_t BinOpr ;

/* Variables and functions */
 size_t OPR_NOBINOPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_4__* priority ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BinOpr FUNC7(LexState *ls, ExpDesc *v, uint32_t limit)
{
  BinOpr op;
  FUNC4(ls);
  FUNC2(ls, v);
  op = FUNC6(ls->tok);
  while (op != OPR_NOBINOPR && priority[op].left > limit) {
    ExpDesc v2;
    BinOpr nextop;
    FUNC3(ls);
    FUNC1(ls->fs, op, v);
    /* Parse binary expression with higher priority. */
    nextop = FUNC7(ls, &v2, priority[op].right);
    FUNC0(ls->fs, op, v, &v2);
    op = nextop;
  }
  FUNC5(ls);
  return op;  /* Return unconsumed binary operator (if any). */
}