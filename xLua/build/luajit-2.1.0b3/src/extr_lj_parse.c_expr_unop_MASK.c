#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char tok; int /*<<< orphan*/  fs; } ;
typedef  TYPE_1__ LexState ;
typedef  int /*<<< orphan*/  ExpDesc ;
typedef  int /*<<< orphan*/  BCOp ;

/* Variables and functions */
 int /*<<< orphan*/  BC_LEN ; 
 int /*<<< orphan*/  BC_NOT ; 
 int /*<<< orphan*/  BC_UNM ; 
 char TK_not ; 
 int /*<<< orphan*/  UNARY_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(LexState *ls, ExpDesc *v)
{
  BCOp op;
  if (ls->tok == TK_not) {
    op = BC_NOT;
  } else if (ls->tok == '-') {
    op = BC_UNM;
  } else if (ls->tok == '#') {
    op = BC_LEN;
  } else {
    FUNC2(ls, v);
    return;
  }
  FUNC3(ls);
  FUNC1(ls, v, UNARY_PRIORITY);
  FUNC0(ls->fs, op, v);
}