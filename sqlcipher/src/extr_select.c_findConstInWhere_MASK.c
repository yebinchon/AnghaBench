#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  pParse; } ;
typedef  TYPE_1__ WhereConst ;
struct TYPE_13__ {scalar_t__ op; struct TYPE_13__* pLeft; struct TYPE_13__* pRight; } ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_FixedCol ; 
 int /*<<< orphan*/  EP_FromJoin ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TK_AND ; 
 scalar_t__ TK_COLUMN ; 
 scalar_t__ TK_EQ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(WhereConst *pConst, Expr *pExpr){
  Expr *pRight, *pLeft;
  if( pExpr==0 ) return;
  if( FUNC0(pExpr, EP_FromJoin) ) return;
  if( pExpr->op==TK_AND ){
    FUNC6(pConst, pExpr->pRight);
    FUNC6(pConst, pExpr->pLeft);
    return;
  }
  if( pExpr->op!=TK_EQ ) return;
  pRight = pExpr->pRight;
  pLeft = pExpr->pLeft;
  FUNC1( pRight!=0 );
  FUNC1( pLeft!=0 );
  if( pRight->op==TK_COLUMN
   && !FUNC0(pRight, EP_FixedCol)
   && FUNC4(pLeft)
   && FUNC5(FUNC3(pConst->pParse,pLeft,pRight))
  ){
    FUNC2(pConst, pRight, pLeft);
  }else
  if( pLeft->op==TK_COLUMN
   && !FUNC0(pLeft, EP_FixedCol)
   && FUNC4(pRight)
   && FUNC5(FUNC3(pConst->pParse,pLeft,pRight))
  ){
    FUNC2(pConst, pLeft, pRight);
  }
}