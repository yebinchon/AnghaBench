#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_18__ {scalar_t__ op; struct TYPE_18__* pRight; struct TYPE_18__* pLeft; } ;
struct TYPE_17__ {int /*<<< orphan*/ * pVdbe; } ;
typedef  TYPE_1__ Parse ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  OP_ElseNotEq ; 
 scalar_t__ OP_Eq ; 
 scalar_t__ OP_Ge ; 
 scalar_t__ OP_Gt ; 
 int /*<<< orphan*/  OP_If ; 
 int /*<<< orphan*/  OP_IfNot ; 
 scalar_t__ OP_Le ; 
 scalar_t__ OP_Lt ; 
 scalar_t__ OP_Ne ; 
 scalar_t__ SQLITE_KEEPNULL ; 
 scalar_t__ SQLITE_NULLEQ ; 
 scalar_t__ SQLITE_STOREP2 ; 
 scalar_t__ TK_EQ ; 
 scalar_t__ TK_GE ; 
 scalar_t__ TK_GT ; 
 scalar_t__ TK_IS ; 
 scalar_t__ TK_ISNOT ; 
 scalar_t__ TK_LE ; 
 scalar_t__ TK_LT ; 
 scalar_t__ TK_NE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,TYPE_2__*,scalar_t__,int,int,int,scalar_t__) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC5 (TYPE_1__*,TYPE_2__*,int,int,TYPE_2__**,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(
  Parse *pParse,        /* Code generator context */
  Expr *pExpr,          /* The comparison operation */
  int dest,             /* Write results into this register */
  u8 op,                /* Comparison operator */
  u8 p5                 /* SQLITE_NULLEQ or zero */
){
  Vdbe *v = pParse->pVdbe;
  Expr *pLeft = pExpr->pLeft;
  Expr *pRight = pExpr->pRight;
  int nLeft = FUNC7(pLeft);
  int i;
  int regLeft = 0;
  int regRight = 0;
  u8 opx = op;
  int addrDone = FUNC10(pParse);

  if( nLeft!=FUNC7(pRight) ){
    FUNC6(pParse, "row value misused");
    return;
  }
  FUNC2( pExpr->op==TK_EQ || pExpr->op==TK_NE 
       || pExpr->op==TK_IS || pExpr->op==TK_ISNOT 
       || pExpr->op==TK_LT || pExpr->op==TK_GT 
       || pExpr->op==TK_LE || pExpr->op==TK_GE 
  );
  FUNC2( pExpr->op==op || (pExpr->op==TK_IS && op==TK_EQ)
            || (pExpr->op==TK_ISNOT && op==TK_NE) );
  FUNC2( p5==0 || pExpr->op!=op );
  FUNC2( p5==SQLITE_NULLEQ || pExpr->op==op );

  p5 |= SQLITE_STOREP2;
  if( opx==TK_LE ) opx = TK_LT;
  if( opx==TK_GE ) opx = TK_GT;

  regLeft = FUNC4(pParse, pLeft);
  regRight = FUNC4(pParse, pRight);

  for(i=0; 1 /*Loop exits by "break"*/; i++){
    int regFree1 = 0, regFree2 = 0;
    Expr *pL, *pR; 
    int r1, r2;
    FUNC2( i>=0 && i<nLeft );
    r1 = FUNC5(pParse, pLeft, i, regLeft, &pL, &regFree1);
    r2 = FUNC5(pParse, pRight, i, regRight, &pR, &regFree2);
    FUNC3(pParse, pL, pR, opx, r1, r2, dest, p5);
    FUNC12(op==OP_Lt); FUNC1(v,op==OP_Lt);
    FUNC12(op==OP_Le); FUNC1(v,op==OP_Le);
    FUNC12(op==OP_Gt); FUNC1(v,op==OP_Gt);
    FUNC12(op==OP_Ge); FUNC1(v,op==OP_Ge);
    FUNC12(op==OP_Eq); FUNC1(v,op==OP_Eq);
    FUNC12(op==OP_Ne); FUNC1(v,op==OP_Ne);
    FUNC8(pParse, regFree1);
    FUNC8(pParse, regFree2);
    if( i==nLeft-1 ){
      break;
    }
    if( opx==TK_EQ ){
      FUNC9(v, OP_IfNot, dest, addrDone); FUNC0(v);
      p5 |= SQLITE_KEEPNULL;
    }else if( opx==TK_NE ){
      FUNC9(v, OP_If, dest, addrDone); FUNC0(v);
      p5 |= SQLITE_KEEPNULL;
    }else{
      FUNC2( op==TK_LT || op==TK_GT || op==TK_LE || op==TK_GE );
      FUNC9(v, OP_ElseNotEq, 0, addrDone);
      FUNC1(v, op==TK_LT);
      FUNC1(v, op==TK_GT);
      FUNC1(v, op==TK_LE);
      FUNC1(v, op==TK_GE);
      if( i==nLeft-2 ) opx = op;
    }
  }
  FUNC11(v, addrDone);
}