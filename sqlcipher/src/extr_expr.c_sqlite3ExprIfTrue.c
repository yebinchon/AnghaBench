
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_25__ {int op; int op2; struct TYPE_25__* pLeft; struct TYPE_25__* pRight; } ;
struct TYPE_24__ {int * pVdbe; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ Expr ;


 scalar_t__ NEVER (int) ;
 int const OP_Eq ;
 int const OP_Ge ;
 int const OP_Gt ;
 int OP_If ;
 int const OP_IsNull ;
 int const OP_Le ;
 int const OP_Lt ;
 int const OP_Ne ;
 int const OP_NotNull ;
 int SQLITE_JUMPIFNULL ;
 int SQLITE_NULLEQ ;
 int VdbeCoverage (int *) ;
 int VdbeCoverageIf (int *,int) ;
 int assert (int) ;
 int codeCompare (TYPE_1__*,TYPE_2__*,TYPE_2__*,int,int,int,int,int) ;
 int exprAlwaysFalse (TYPE_2__*) ;
 int exprAlwaysTrue (TYPE_2__*) ;
 int exprCodeBetween (TYPE_1__*,TYPE_2__*,int,void (*) (TYPE_1__*,TYPE_2__*,int,int),int) ;
 int sqlite3ExprCodeIN (TYPE_1__*,TYPE_2__*,int,int) ;
 int sqlite3ExprCodeTemp (TYPE_1__*,TYPE_2__*,int*) ;
 int sqlite3ExprIfFalse (TYPE_1__*,TYPE_2__*,int,int) ;
 int sqlite3ExprIsVector (TYPE_2__*) ;
 int sqlite3ExprTruthValue (TYPE_2__*) ;
 int sqlite3ReleaseTempReg (TYPE_1__*,int) ;
 int sqlite3VdbeAddOp2 (int *,int,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeGoto (int *,int) ;
 int sqlite3VdbeMakeLabel (TYPE_1__*) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int testcase (int) ;

void sqlite3ExprIfTrue(Parse *pParse, Expr *pExpr, int dest, int jumpIfNull){
  Vdbe *v = pParse->pVdbe;
  int op = 0;
  int regFree1 = 0;
  int regFree2 = 0;
  int r1, r2;

  assert( jumpIfNull==SQLITE_JUMPIFNULL || jumpIfNull==0 );
  if( NEVER(v==0) ) return;
  if( NEVER(pExpr==0) ) return;
  op = pExpr->op;
  switch( op ){
    case 143: {
      int d2 = sqlite3VdbeMakeLabel(pParse);
      testcase( jumpIfNull==0 );
      sqlite3ExprIfFalse(pParse, pExpr->pLeft, d2,jumpIfNull^SQLITE_JUMPIFNULL);
      sqlite3ExprIfTrue(pParse, pExpr->pRight, dest, jumpIfNull);
      sqlite3VdbeResolveLabel(v, d2);
      break;
    }
    case 129: {
      testcase( jumpIfNull==0 );
      sqlite3ExprIfTrue(pParse, pExpr->pLeft, dest, jumpIfNull);
      sqlite3ExprIfTrue(pParse, pExpr->pRight, dest, jumpIfNull);
      break;
    }
    case 131: {
      testcase( jumpIfNull==0 );
      sqlite3ExprIfFalse(pParse, pExpr->pLeft, dest, jumpIfNull);
      break;
    }
    case 128: {
      int isNot;
      int isTrue;
      testcase( jumpIfNull==0 );
      isNot = pExpr->op2==136;
      isTrue = sqlite3ExprTruthValue(pExpr->pRight);
      testcase( isTrue && isNot );
      testcase( !isTrue && isNot );
      if( isTrue ^ isNot ){
        sqlite3ExprIfTrue(pParse, pExpr->pLeft, dest,
                          isNot ? SQLITE_JUMPIFNULL : 0);
      }else{
        sqlite3ExprIfFalse(pParse, pExpr->pLeft, dest,
                           isNot ? SQLITE_JUMPIFNULL : 0);
      }
      break;
    }
    case 137:
    case 136:
      testcase( op==137 );
      testcase( op==136 );
      op = (op==137) ? 141 : 132;
      jumpIfNull = SQLITE_NULLEQ;

    case 133:
    case 134:
    case 139:
    case 140:
    case 132:
    case 141: {
      if( sqlite3ExprIsVector(pExpr->pLeft) ) goto default_expr;
      testcase( jumpIfNull==0 );
      r1 = sqlite3ExprCodeTemp(pParse, pExpr->pLeft, &regFree1);
      r2 = sqlite3ExprCodeTemp(pParse, pExpr->pRight, &regFree2);
      codeCompare(pParse, pExpr->pLeft, pExpr->pRight, op,
                  r1, r2, dest, jumpIfNull);
      assert(133==OP_Lt); testcase(op==OP_Lt); VdbeCoverageIf(v,op==OP_Lt);
      assert(134==OP_Le); testcase(op==OP_Le); VdbeCoverageIf(v,op==OP_Le);
      assert(139==OP_Gt); testcase(op==OP_Gt); VdbeCoverageIf(v,op==OP_Gt);
      assert(140==OP_Ge); testcase(op==OP_Ge); VdbeCoverageIf(v,op==OP_Ge);
      assert(141==OP_Eq); testcase(op==OP_Eq);
      VdbeCoverageIf(v, op==OP_Eq && jumpIfNull==SQLITE_NULLEQ);
      VdbeCoverageIf(v, op==OP_Eq && jumpIfNull!=SQLITE_NULLEQ);
      assert(132==OP_Ne); testcase(op==OP_Ne);
      VdbeCoverageIf(v, op==OP_Ne && jumpIfNull==SQLITE_NULLEQ);
      VdbeCoverageIf(v, op==OP_Ne && jumpIfNull!=SQLITE_NULLEQ);
      testcase( regFree1==0 );
      testcase( regFree2==0 );
      break;
    }
    case 135:
    case 130: {
      assert( 135==OP_IsNull ); testcase( op==135 );
      assert( 130==OP_NotNull ); testcase( op==130 );
      r1 = sqlite3ExprCodeTemp(pParse, pExpr->pLeft, &regFree1);
      sqlite3VdbeAddOp2(v, op, r1, dest);
      VdbeCoverageIf(v, op==135);
      VdbeCoverageIf(v, op==130);
      testcase( regFree1==0 );
      break;
    }
    case 142: {
      testcase( jumpIfNull==0 );
      exprCodeBetween(pParse, pExpr, dest, sqlite3ExprIfTrue, jumpIfNull);
      break;
    }

    case 138: {
      int destIfFalse = sqlite3VdbeMakeLabel(pParse);
      int destIfNull = jumpIfNull ? dest : destIfFalse;
      sqlite3ExprCodeIN(pParse, pExpr, destIfFalse, destIfNull);
      sqlite3VdbeGoto(v, dest);
      sqlite3VdbeResolveLabel(v, destIfFalse);
      break;
    }

    default: {
    default_expr:
      if( exprAlwaysTrue(pExpr) ){
        sqlite3VdbeGoto(v, dest);
      }else if( exprAlwaysFalse(pExpr) ){

      }else{
        r1 = sqlite3ExprCodeTemp(pParse, pExpr, &regFree1);
        sqlite3VdbeAddOp3(v, OP_If, r1, dest, jumpIfNull!=0);
        VdbeCoverage(v);
        testcase( regFree1==0 );
        testcase( jumpIfNull==0 );
      }
      break;
    }
  }
  sqlite3ReleaseTempReg(pParse, regFree1);
  sqlite3ReleaseTempReg(pParse, regFree2);
}
