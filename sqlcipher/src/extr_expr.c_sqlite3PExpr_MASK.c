#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int op; int iAgg; int /*<<< orphan*/  nHeight; } ;
struct TYPE_16__ {scalar_t__ nErr; int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ Parse ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  IN_RENAME_OBJECT ; 
 int TK_AND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

Expr *FUNC5(
  Parse *pParse,          /* Parsing context */
  int op,                 /* Expression opcode */
  Expr *pLeft,            /* Left operand */
  Expr *pRight            /* Right operand */
){
  Expr *p;
  if( op==TK_AND && pParse->nErr==0 && !IN_RENAME_OBJECT ){
    /* Take advantage of short-circuit false optimization for AND */
    p = FUNC2(pParse->db, pLeft, pRight);
  }else{
    p = FUNC1(pParse->db, sizeof(Expr));
    if( p ){
      FUNC0(p, 0, sizeof(Expr));
      p->op = op & 0xff;
      p->iAgg = -1;
    }
    FUNC3(pParse->db, p, pLeft, pRight);
  }
  if( p ) {
    FUNC4(pParse, p->nHeight);
  }
  return p;
}