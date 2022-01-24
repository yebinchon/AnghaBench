#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_25__ {int op; int op2; struct TYPE_25__* pLeft; struct TYPE_25__* pRight; } ;
struct TYPE_24__ {int /*<<< orphan*/ * pVdbe; } ;
typedef  TYPE_1__ Parse ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int OP_Eq ; 
 int OP_Ge ; 
 int OP_Gt ; 
 int /*<<< orphan*/  OP_IfNot ; 
 int OP_IsNull ; 
 int OP_Le ; 
 int OP_Lt ; 
 int OP_Ne ; 
 int OP_NotNull ; 
 int SQLITE_JUMPIFNULL ; 
 int SQLITE_NULLEQ ; 
#define  TK_AND 143 
#define  TK_BETWEEN 142 
#define  TK_EQ 141 
#define  TK_GE 140 
#define  TK_GT 139 
#define  TK_IN 138 
#define  TK_IS 137 
#define  TK_ISNOT 136 
#define  TK_ISNULL 135 
#define  TK_LE 134 
#define  TK_LT 133 
#define  TK_NE 132 
#define  TK_NOT 131 
#define  TK_NOTNULL 130 
#define  TK_OR 129 
#define  TK_TRUTH 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,TYPE_2__*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,int,void (*) (TYPE_1__*,TYPE_2__*,int,int),int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*,int,int) ; 
 int FUNC9 (TYPE_1__*,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

void FUNC20(Parse *pParse, Expr *pExpr, int dest, int jumpIfNull){
  Vdbe *v = pParse->pVdbe;
  int op = 0;
  int regFree1 = 0;
  int regFree2 = 0;
  int r1, r2;

  FUNC3( jumpIfNull==SQLITE_JUMPIFNULL || jumpIfNull==0 );
  if( FUNC0(v==0) ) return; /* Existence of VDBE checked by caller */
  if( pExpr==0 )    return;

  /* The value of pExpr->op and op are related as follows:
  **
  **       pExpr->op            op
  **       ---------          ----------
  **       TK_ISNULL          OP_NotNull
  **       TK_NOTNULL         OP_IsNull
  **       TK_NE              OP_Eq
  **       TK_EQ              OP_Ne
  **       TK_GT              OP_Le
  **       TK_LE              OP_Gt
  **       TK_GE              OP_Lt
  **       TK_LT              OP_Ge
  **
  ** For other values of pExpr->op, op is undefined and unused.
  ** The value of TK_ and OP_ constants are arranged such that we
  ** can compute the mapping above using the following expression.
  ** Assert()s verify that the computation is correct.
  */
  op = ((pExpr->op+(TK_ISNULL&1))^1)-(TK_ISNULL&1);

  /* Verify correct alignment of TK_ and OP_ constants
  */
  FUNC3( pExpr->op!=TK_ISNULL || op==OP_NotNull );
  FUNC3( pExpr->op!=TK_NOTNULL || op==OP_IsNull );
  FUNC3( pExpr->op!=TK_NE || op==OP_Eq );
  FUNC3( pExpr->op!=TK_EQ || op==OP_Ne );
  FUNC3( pExpr->op!=TK_LT || op==OP_Ge );
  FUNC3( pExpr->op!=TK_LE || op==OP_Gt );
  FUNC3( pExpr->op!=TK_GT || op==OP_Le );
  FUNC3( pExpr->op!=TK_GE || op==OP_Lt );

  switch( pExpr->op ){
    case TK_AND: {
      FUNC19( jumpIfNull==0 );
      FUNC20(pParse, pExpr->pLeft, dest, jumpIfNull);
      FUNC20(pParse, pExpr->pRight, dest, jumpIfNull);
      break;
    }
    case TK_OR: {
      int d2 = FUNC17(pParse);
      FUNC19( jumpIfNull==0 );
      FUNC10(pParse, pExpr->pLeft, d2, jumpIfNull^SQLITE_JUMPIFNULL);
      FUNC20(pParse, pExpr->pRight, dest, jumpIfNull);
      FUNC18(v, d2);
      break;
    }
    case TK_NOT: {
      FUNC19( jumpIfNull==0 );
      FUNC10(pParse, pExpr->pLeft, dest, jumpIfNull);
      break;
    }
    case TK_TRUTH: {
      int isNot;   /* IS NOT TRUE or IS NOT FALSE */
      int isTrue;  /* IS TRUE or IS NOT TRUE */
      FUNC19( jumpIfNull==0 );
      isNot = pExpr->op2==TK_ISNOT;
      isTrue = FUNC12(pExpr->pRight);
      FUNC19( isTrue && isNot );
      FUNC19( !isTrue && isNot );
      if( isTrue ^ isNot ){
        /* IS TRUE and IS NOT FALSE */
        FUNC20(pParse, pExpr->pLeft, dest,
                           isNot ? 0 : SQLITE_JUMPIFNULL);

      }else{
        /* IS FALSE and IS NOT TRUE */
        FUNC10(pParse, pExpr->pLeft, dest,
                          isNot ? 0 : SQLITE_JUMPIFNULL);
      }
      break;
    }
    case TK_IS:
    case TK_ISNOT:
      FUNC19( pExpr->op==TK_IS );
      FUNC19( pExpr->op==TK_ISNOT );
      op = (pExpr->op==TK_IS) ? TK_NE : TK_EQ;
      jumpIfNull = SQLITE_NULLEQ;
      /* Fall thru */
    case TK_LT:
    case TK_LE:
    case TK_GT:
    case TK_GE:
    case TK_NE:
    case TK_EQ: {
      if( FUNC11(pExpr->pLeft) ) goto default_expr;
      FUNC19( jumpIfNull==0 );
      r1 = FUNC9(pParse, pExpr->pLeft, &regFree1);
      r2 = FUNC9(pParse, pExpr->pRight, &regFree2);
      FUNC4(pParse, pExpr->pLeft, pExpr->pRight, op,
                  r1, r2, dest, jumpIfNull);
      FUNC3(TK_LT==OP_Lt); FUNC19(op==OP_Lt); FUNC2(v,op==OP_Lt);
      FUNC3(TK_LE==OP_Le); FUNC19(op==OP_Le); FUNC2(v,op==OP_Le);
      FUNC3(TK_GT==OP_Gt); FUNC19(op==OP_Gt); FUNC2(v,op==OP_Gt);
      FUNC3(TK_GE==OP_Ge); FUNC19(op==OP_Ge); FUNC2(v,op==OP_Ge);
      FUNC3(TK_EQ==OP_Eq); FUNC19(op==OP_Eq);
      FUNC2(v, op==OP_Eq && jumpIfNull!=SQLITE_NULLEQ);
      FUNC2(v, op==OP_Eq && jumpIfNull==SQLITE_NULLEQ);
      FUNC3(TK_NE==OP_Ne); FUNC19(op==OP_Ne);
      FUNC2(v, op==OP_Ne && jumpIfNull!=SQLITE_NULLEQ);
      FUNC2(v, op==OP_Ne && jumpIfNull==SQLITE_NULLEQ);
      FUNC19( regFree1==0 );
      FUNC19( regFree2==0 );
      break;
    }
    case TK_ISNULL:
    case TK_NOTNULL: {
      r1 = FUNC9(pParse, pExpr->pLeft, &regFree1);
      FUNC14(v, op, r1, dest);
      FUNC19( op==TK_ISNULL );   FUNC2(v, op==TK_ISNULL);
      FUNC19( op==TK_NOTNULL );  FUNC2(v, op==TK_NOTNULL);
      FUNC19( regFree1==0 );
      break;
    }
    case TK_BETWEEN: {
      FUNC19( jumpIfNull==0 );
      FUNC7(pParse, pExpr, dest, sqlite3ExprIfFalse, jumpIfNull);
      break;
    }
#ifndef SQLITE_OMIT_SUBQUERY
    case TK_IN: {
      if( jumpIfNull ){
        FUNC8(pParse, pExpr, dest, dest);
      }else{
        int destIfNull = FUNC17(pParse);
        FUNC8(pParse, pExpr, dest, destIfNull);
        FUNC18(v, destIfNull);
      }
      break;
    }
#endif
    default: {
    default_expr: 
      if( FUNC5(pExpr) ){
        FUNC16(v, dest);
      }else if( FUNC6(pExpr) ){
        /* no-op */
      }else{
        r1 = FUNC9(pParse, pExpr, &regFree1);
        FUNC15(v, OP_IfNot, r1, dest, jumpIfNull!=0);
        FUNC1(v);
        FUNC19( regFree1==0 );
        FUNC19( jumpIfNull==0 );
      }
      break;
    }
  }
  FUNC13(pParse, regFree1);
  FUNC13(pParse, regFree2);
}