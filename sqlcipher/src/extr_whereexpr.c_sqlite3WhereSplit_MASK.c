#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_9__ {int /*<<< orphan*/  op; } ;
typedef  TYPE_1__ WhereClause ;
struct TYPE_10__ {struct TYPE_10__* pRight; struct TYPE_10__* pLeft; int /*<<< orphan*/  op; } ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC2(WhereClause *pWC, Expr *pExpr, u8 op){
  Expr *pE2 = FUNC0(pExpr);
  pWC->op = op;
  if( pE2==0 ) return;
  if( pE2->op!=op ){
    FUNC1(pWC, pExpr, 0);
  }else{
    FUNC2(pWC, pE2->pLeft, op);
    FUNC2(pWC, pE2->pRight, op);
  }
}